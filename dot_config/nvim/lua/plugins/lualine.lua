return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    local icons = require("lazyvim.config").icons
    local Util = require("lazyvim.util")

    local C = require("catppuccin.palettes").get_palette("mocha")
    return {
      options = {
        icons_enabled = true,
        theme = "onedark",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            icon = "",
            separator = { left = "", right = "" },
            color = {
              fg = C.mantle,
              bg = C.lavender,
            },
          },
        },
        lualine_b = {
          {
            "branch",
            icon = "",
            separator = { left = "", right = "" },
            color = {
              fg = C.sapphire,
              bg = C.surface2,
            },
          },
          {
            "diff",
            separator = { left = "", right = "" },
            color = {
              fg = C.mantle,
              bg = C.surface2,
            },
          },
        },
        lualine_c = {
          {
            "diagnostics",
            separator = { left = "", right = "" },
            color = {
              bg = C.surface1,
            },
          },
          {
            "filename",
          },
        },
        lualine_x = { "filesize" },
        lualine_y = {
          {
            "filetype",
            icons_enabled = false,
            color = {
              fg = C.mantle,
              bg = C.maroon,
            },
          },
        },
        lualine_z = {
          {
            "location",
            icon = "",
            color = {
              fg = C.mantle,
              bg = C.flamingo,
            },
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = { "neo-tree", "lazy" },
    }
  end,
}
