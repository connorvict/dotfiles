return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        svelte = {},
        astro = {},
        templ = {},
        tailwindcss = {
          -- add additional filetypes to the default_config
          filetypes_include = { "templ", "astro", "svelte", "markdown" },
          -- to fully override the default_config, change the below
          -- filetypes = {}
          init_options = { userLanguages = { templ = "html", astro = "html", svelte = "html" } },
          settings = {
            tailwindCSS = { classAttributes = { "class", "className", "tw", "class:list", "classList", "ngClass" } },
          },
        },
        htmx = {
          filetypes = { "html", "templ", "astro" },
        },
      },
    },
  },
}
