return {
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({
        transparent = true,
      })
    end,
  },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "projekt0n/github-nvim-theme" },
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "cool",
    },
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
      })
    end,
  },
  {
    "neanias/everforest-nvim",
    config = function()
      background = "soft"
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        styles = {
          transparency = true,
        },
      })
    end,
  },
  { "EdenEast/nightfox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-moon",
    },
  },
}
