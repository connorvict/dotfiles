return {
  -- add catppuccin
  { "nyoom-engineering/oxocarbon.nvim" },
  { "projekt0n/github-nvim-theme" },
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "cool",
    },
  },
  { "rebelot/kanagawa.nvim" },
  {
    "neanias/everforest-nvim",
    config = function()
      background = "soft"
    end,
  },
  {
    "zenbones-theme/zenbones.nvim",
    dependencies = { "rktjmp/lush.nvim" },
  },
  {
    "slugbyte/lackluster.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_default",
    },
  },
}
