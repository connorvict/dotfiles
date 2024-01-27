return {
  -- add catppuccin
  { "catppuccin/nvim" },
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
  -- Configure LazyVim to load catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
