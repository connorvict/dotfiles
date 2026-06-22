local M = {}

M.colorscheme = "kintsugi-flared"

local apply = function(name, notify)
  local ok, err = pcall(vim.cmd.colorscheme, name)
  if not ok and notify ~= false then
    vim.notify(('Could not load colorscheme %q: %s'):format(name, err), vim.log.levels.ERROR)
  end
  return ok
end

local get_theme_file = function()
  local source = debug.getinfo(1, 'S').source
  return source:sub(1, 1) == '@' and source:sub(2) or (vim.fn.stdpath('config') .. '/lua/config/theme.lua')
end

M.apply = function(name)
  name = name or M.colorscheme
  if apply(name) then M.colorscheme = name end
end

M.save = function(name)
  M.colorscheme = name

  local path = get_theme_file()
  local lines = vim.fn.readfile(path)
  local saved = false

  for i, line in ipairs(lines) do
    if line:match('^M%.colorscheme%s*=') then
      lines[i] = ('M.colorscheme = %q'):format(name)
      saved = true
      break
    end
  end

  if not saved then table.insert(lines, 1, ('M.colorscheme = %q'):format(name)) end
  vim.fn.writefile(lines, path)
  vim.notify(('Saved colorscheme: %s'):format(name), vim.log.levels.INFO)
end

M.pick = function()
  local pick = require('mini.pick')
  local themes = vim.fn.getcompletion('', 'color')
  table.sort(themes)

  local original = vim.g.colors_name or M.colorscheme
  local previewed = original
  local original_index
  for i, theme in ipairs(themes) do
    if theme == original then
      original_index = i
      break
    end
  end

  local preview = function(name)
    if type(name) == 'string' and name ~= previewed and apply(name, false) then
      previewed = name
      vim.cmd('redraw')
    end
  end

  local preview_current = function()
    if not pick.is_picker_active() then return end
    local matches = pick.get_picker_matches()
    preview(matches and matches.current)
  end

  local move = function(step)
    local matches = pick.get_picker_matches()
    if not (matches and matches.all_inds and matches.current_ind) then return end

    local current_pos = 1
    for i, ind in ipairs(matches.all_inds) do
      if ind == matches.current_ind then
        current_pos = i
        break
      end
    end

    local next_pos = (current_pos + step - 1) % #matches.all_inds + 1
    pick.set_picker_match_inds({ matches.all_inds[next_pos] }, 'current')
    preview_current()
  end

  local did_set_initial = false
  local group = vim.api.nvim_create_augroup('theme-picker-preview', { clear = true })
  vim.api.nvim_create_autocmd('User', {
    group = group,
    pattern = 'MiniPickMatch',
    callback = vim.schedule_wrap(function()
      if not did_set_initial and original_index then
        local matches = pick.get_picker_matches()
        if matches and vim.tbl_contains(matches.all_inds or {}, original_index) then
          pick.set_picker_match_inds({ original_index }, 'current')
        end
        did_set_initial = true
      end

      preview_current()
    end),
  })

  local chosen = pick.start({
    window = { config = { height = 8 } },
    mappings = {
      move_down = '',
      move_up = '',
      preview_down = { char = '<C-n>', func = function() move(1) end },
      preview_up = { char = '<C-p>', func = function() move(-1) end },
      preview_down_arrow = { char = '<Down>', func = function() move(1) end },
      preview_up_arrow = { char = '<Up>', func = function() move(-1) end },
    },
    source = {
      items = themes,
      name = 'Find Theme',
      choose = function(item)
        apply(item)
        M.save(item)
      end,
      preview = function(buf_id, item)
        vim.api.nvim_buf_set_lines(buf_id, 0, -1, false, {
          item,
          '',
          'Move selection to preview live.',
          'Press <CR> to save to theme.lua.',
          'Press <Esc> to restore the previous theme.',
        })
      end,
    },
  })

  vim.api.nvim_del_augroup_by_id(group)

  if chosen == nil then M.apply(original) end
end

return M
