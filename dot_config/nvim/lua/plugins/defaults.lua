local logo = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⣤⡤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢰⣶⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⡆⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢸⣿⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⢹
⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠠⠐⠈⢈⣩⣾⢹⠀⣿⡟⣡⠲⠢⣀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢸⣿⠀⠀⠀⠀⡀⠀⠒⠁⣀⣠⠊⠁⠈⢉⢺⠀⣿⣗⡵⢄⠀⠑⠷⡢⢀⡀⠀⠀⠀⠀⡇⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢸⣿⢀⠀⠐⠈⠀⠀⣠⠋⢉⠟⢀⠀⠀⣌⢸⠀⣿⡇⠺⢦⡑⢄⡈⣆⠳⢝⢶⣤⣀⠀⡇⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⡇⢸⣿⡴⠞⢫⣀⡔⡟⢛⣿⣿⠀⠉⠀⠱⢸⣿⠀⣿⣿⣠⡢⡹⠷⢮⣗⡵⣳⣭⣻⣙⢷⡇⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣤⣶⣪⣾⡇⢸⣽⣤⣾⣿⠿⣿⣴⣞⣿⣦⠀⠀⣤⢪⣩⢻⠀⣿⣿⠻⣷⣴⢄⠀⠻⣿⢺⣝⣿⣿⣷⡇⢸⣿⣗⣖⣄⡀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⣿⠀⠀⠀⠀⢀⣠⣴⣶⣿⣿⣟⣽⠟⣻⡇⢸⣿⣽⡿⠋⣴⣽⣿⣿⣻⣿⣾⣾⣴⣿⣿⣿⠀⣿⣷⡷⢸⠍⠀⠹⡄⠨⢶⣪⡛⢿⣝⡇⢸⣿⡍⢻⡿⡷⣦⣔⠠⣀⠀⠀⠀⢸
⢸⣿⡀⠤⢐⣻⠿⣿⣿⡿⡟⣫⣻⣻⡽⢯⡇⢸⣿⢻⣤⣽⣿⣿⠽⢿⡯⠟⣯⣟⣽⣿⣛⣸⠀⣿⣧⣴⡧⣷⣰⣀⡀⡘⠐⠾⡿⣶⢙⡇⢸⣿⣻⣓⠮⢖⣭⢉⠳⢶⣮⢷⣢⣼
⢸⣿⣀⠷⠋⢃⡼⠋⣋⣼⣿⠟⠿⣦⠤⣌⡇⢸⣿⣛⡼⣿⣿⠜⠚⠛⠺⣗⢿⣶⣞⠘⣻⢻⠀⣿⣿⠏⠱⡿⠁⠙⠻⢁⣄⡤⠾⢼⣻⡇⢸⣿⣍⠁⢋⠹⠍⠃⠈⠱⠿⣗⣪⣽
⢸⣿⢀⡠⣐⠥⠐⠋⠉⠡⢔⡠⠞⢐⣨⡽⡇⢸⣿⣁⠊⠉⠀⠀⠀⠈⠀⠀⠑⠼⡝⡍⣇⢸⠀⣿⡧⣤⠾⠄⠀⠒⡈⠁⠄⠀⠀⠈⠀⡇⢸⣿⣧⣖⣁⣠⣴⣴⣦⣤⣤⣤⣄⣸
⢸⣿⠃⠉⠀⠀⢠⠔⢀⡈⠁⡠⢀⡗⣀⣤⡇⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⣰⠀⠰⣶⡝⠾⢸⠀⣿⡇⡀⠀⡀⠦⡤⠕⣏⡷⢖⣺⣶⢾⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⢸⣿⠀⠀⠀⡠⠔⠀⠊⠀⠝⢀⠔⠭⠋⠇⡇⢸⣿⣤⣆⣀⣀⣆⣀⣁⣴⣶⣷⣶⣾⡿⠆⣸⠀⣿⣿⣤⣶⡥⢀⣴⣶⣮⣶⣿⣿⣿⣶⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⢸⣿⠀⠀⠈⢀⣀⣠⣀⣀⣤⣾⣯⣡⣀⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣾⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⢸⣿⣰⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇   ⠀⠀⠀⠀mt.fuji
⠈⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠁⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]]
logo = string.rep("\n", 8) .. logo .. "\n\n"

return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "folke/which-key.nvim", opts = { style = "helix" } },
  {
    "nvimdev/dashboard-nvim",
    opts = { config = { header = vim.split(logo, "\n") } },
  },
}
