return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "astro",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        astro = {},
        tailwindcss = {
          filetypes_include = { "astro", "markdown" },
          init_options = { userLanguages = { astro = "html" } },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["astro"] = { "prettier" },
      },
    },
  },
}
