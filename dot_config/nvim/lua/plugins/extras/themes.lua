return {
  -- add catppuccin
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
}
