vim.opt.cursorline = false
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "81"
vim.opt.pumblend = 0

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
    svelte = "svelte",
  },
})

vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFFFFF", bold = true })
