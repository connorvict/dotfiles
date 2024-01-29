return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = {},
        tailwindcss = {
          -- add additional filetypes to the default_config
          filetypes_include = { "templ", "astro", "markdown" },
          -- to fully override the default_config, change the below
          -- filetypes = {}
          init_options = { userLanguages = { templ = "html", astro = "html" } },
        },
        htmx = {
          filetypes = { "html", "templ" },
        },
      },
    },
  },
}
