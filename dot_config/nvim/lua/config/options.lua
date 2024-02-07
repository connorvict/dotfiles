-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.shell = "/usr/bin/fish"
vim.python3_host_prog = "/home/norconv/.pyenv/versions/pitcrew/bin/python"
local function copy(lines, _)
  require("osc52").copy(table.concat(lines, "\n"))
end

local function paste()
  return { vim.fn.split(vim.fn.getreg(""), "\n"), vim.fn.getregtype("") }
end

vim.g.clipboard = {
  name = "osc52",
  copy = { ["+"] = copy, ["*"] = copy, ['"'] = copy },
  paste = { ["+"] = paste, ["*"] = paste, ['"'] = paste },
}

vim.filetype.add({
  extension = {
    astro = "astro",
    templ = "templ",
  },
})

