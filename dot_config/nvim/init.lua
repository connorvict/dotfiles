require("config.lazy")

vim.cmd.colorscheme("catppuccin")
local C = require("catppuccin.palettes").get_palette("mocha")
vim.api.nvim_set_hl(0, "LineNr", { fg = C.peach, bold = true })
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = C.overlay0, bold = false })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = C.overlay0, bold = false })
