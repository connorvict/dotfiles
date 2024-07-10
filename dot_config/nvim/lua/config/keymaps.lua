-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>e", function()
  local current_file_dir = vim.fn.fnamemodify(vim.fn.expand("%:p:h"), ":p")
  require("mini.files").open(current_file_dir, true)
end, { desc = "Open mini.files (Directory of Current File)" })

vim.keymap.set("n", "<leader>E", function()
  require("mini.files").open(vim.uv.cwd(), true)
end, { desc = "Open mini.files (cwd)" })
