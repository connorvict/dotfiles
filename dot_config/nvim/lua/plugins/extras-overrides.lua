return {
  "rcarriga/nvim-dap-ui",
  keys = {
    {
      "<leader>de",
      function()
        require("dapui").eval(nil, { enter = true })
      end,
      desc = "Eval",
      mode = { "n", "v" },
    },
  },
}
