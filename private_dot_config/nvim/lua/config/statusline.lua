local M = {}

local debug_mode = require('config.debug_mode')

local set_highlights = function()
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeDebug', { link = 'MiniStatuslineModeReplace' })
end

local active_content = function()
  local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
  if debug_mode.is_active() then
    mode, mode_hl = 'DEBUG', 'MiniStatuslineModeDebug'
  end

  local git = MiniStatusline.section_git({ trunc_width = 40 })
  local diff = MiniStatusline.section_diff({ trunc_width = 75 })
  local diagnostics = MiniStatusline.section_diagnostics({ trunc_width = 75 })
  local lsp = MiniStatusline.section_lsp({ trunc_width = 75 })
  local filename = MiniStatusline.section_filename({ trunc_width = 140 })
  local fileinfo = MiniStatusline.section_fileinfo({ trunc_width = 120 })
  local location = MiniStatusline.section_location({ trunc_width = 75 })
  local search = MiniStatusline.section_searchcount({ trunc_width = 75 })

  return MiniStatusline.combine_groups({
    { hl = mode_hl, strings = { mode } },
    { hl = 'MiniStatuslineDevinfo', strings = { git, diff, diagnostics, lsp } },
    '%<',
    { hl = 'MiniStatuslineFilename', strings = { filename } },
    '%=',
    { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
    { hl = mode_hl, strings = { search, location } },
  })
end

function M.setup()
  set_highlights()
  Config.new_autocmd('ColorScheme', nil, set_highlights, 'Set debug statusline highlight')
  require('mini.statusline').setup({ content = { active = active_content } })
end

return M
