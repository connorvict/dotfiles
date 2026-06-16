local M = {}

local keys = { 'o', 'i', 'O', 'c', 'b', 'r', 'u', 'x', 'q', 'w', '<Esc>' }
local previous_maps = {}

M.active = false

local redraw_statusline = function()
  vim.cmd('redrawstatus')
end

function M.is_active()
  return M.active
end

function M.leave()
  if not M.active then return end

  for _, key in ipairs(keys) do
    pcall(vim.keymap.del, 'n', key)
    local previous = previous_maps[key]
    if previous and next(previous) ~= nil then
      vim.fn.mapset('n', false, previous)
    end
  end

  previous_maps = {}
  M.active = false
  redraw_statusline()
end

local map = function(lhs, rhs, desc, exit_after)
  previous_maps[lhs] = vim.fn.maparg(lhs, 'n', false, true)
  vim.keymap.set('n', lhs, function()
    vim.cmd(rhs)
    if exit_after then M.leave() end
  end, { desc = desc, nowait = true, silent = true })
end

function M.enter()
  if M.active then return end

  M.active = true
  redraw_statusline()

  map('o', 'DapStepOver', 'Debug: step over')
  map('i', 'DapStepInto', 'Debug: step into')
  map('O', 'DapStepOut', 'Debug: step out')
  map('c', 'DapContinue', 'Debug: continue')
  map('b', 'DapToggleBreakpoint', 'Debug: toggle breakpoint')
  map('r', 'DapToggleRepl', 'Debug: toggle REPL')
  map('u', 'DapViewToggle', 'Debug: toggle UI')
  map('w', 'DapViewWatch', 'Debug: watch expression')
  map('x', 'DapTerminate', 'Debug: terminate', true)

  previous_maps.q = vim.fn.maparg('q', 'n', false, true)
  vim.keymap.set('n', 'q', M.leave, { desc = 'Debug: quit mode', nowait = true, silent = true })
  previous_maps['<Esc>'] = vim.fn.maparg('<Esc>', 'n', false, true)
  vim.keymap.set('n', '<Esc>', M.leave, { desc = 'Debug: quit mode', nowait = true, silent = true })
end

return M
