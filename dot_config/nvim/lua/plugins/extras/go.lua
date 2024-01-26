return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "templ",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = {},
        tailwindcss = {
          -- exclude a filetype from the default_config
          filetypes_exclude = { "markdown" },
          -- add additional filetypes to the default_config
          filetypes_include = { "templ" },
          -- to fully override the default_config, change the below
          -- filetypes = {}
          init_options = { userLanguages = { templ = "html" } },
        },
        htmx = {
          filetypes= { "html", "templ" },
        },
      },
    },
  },
}

