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
  { "sainnhe/everforest" },
  -- Configure LazyVim to load catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
