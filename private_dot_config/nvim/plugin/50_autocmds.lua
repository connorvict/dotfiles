local terminal = { buf = nil, win = nil }

vim.api.nvim_create_user_command("ToggleTerminal", function()
  if terminal.win ~= nil and vim.api.nvim_win_is_valid(terminal.win) then
    vim.api.nvim_win_hide(terminal.win)
    terminal.win = nil
    return
  end

  vim.cmd("botright 18split")
  terminal.win = vim.api.nvim_get_current_win()

  if terminal.buf ~= nil and vim.api.nvim_buf_is_valid(terminal.buf) then
    vim.api.nvim_win_set_buf(terminal.win, terminal.buf)
  else
    vim.cmd("terminal")
    terminal.buf = vim.api.nvim_get_current_buf()
  end

  vim.wo[terminal.win].number = false
  vim.wo[terminal.win].relativenumber = false
  vim.wo[terminal.win].signcolumn = "no"
  vim.wo[terminal.win].winhighlight = "Normal:NormalFloat,NormalNC:NormalFloat,EndOfBuffer:NormalFloat"
  vim.cmd("startinsert")
end, { desc = "Toggle terminal" })

vim.api.nvim_create_user_command("DebugMode", function()
  require("config.debug_mode").enter()
end, { desc = "Enter temporary debug key mode" })

vim.api.nvim_create_user_command("WatchRun", function()
  local overseer = require("overseer")
  overseer.run_task({ name = "run script", autostart = false }, function(task)
    if task then
      task:add_component({ "restart_on_save", paths = { vim.fn.expand("%:p") } })
      task:start()
      vim.cmd(":OverseerOpen")
    else
      vim.notify("WatchRun not supported for filetype " .. vim.bo.filetype, vim.log.levels.ERROR)
    end
  end)
end, {})
