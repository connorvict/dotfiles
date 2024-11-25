return {
  "stevearc/oil.nvim",
  opts = {
    skip_confirm_for_simple_edits = true,
    float = {
      max_width = 80,
      max_height = 32,
    },
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-p>"] = "actions.preview",
      ["q"] = "actions.close",
      ["<Esc>"] = "actions.close",
      ["<C-l>"] = "actions.refresh",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory", mode = "n" },
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["g."] = "actions.toggle_hidden",
      ["g\\"] = "actions.toggle_trash",
    },
    use_default_keymaps = false,
  },
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  keys = {
    {
      "<leader>e",
      "<CMD>lua require('oil').toggle_float()<CR>",
      desc = "Open mini.files (Directory of Current File)",
    },
  },
}
