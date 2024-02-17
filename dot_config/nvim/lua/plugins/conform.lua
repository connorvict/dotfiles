return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        astro = { "prettierd", "rustywind" },
        htmldjango = { "djlint", "rustywind" },
        templ = { "rustywind" },
        html = { "rustywind" },
        css = { "rustywind" },
      },
    },
  },
}
