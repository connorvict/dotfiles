local add = vim.pack.add
local now, now_if_args, later = Config.now, Config.now_if_args, Config.later

now(function()
	-- Install only those that you need
	add({
		"https://github.com/sainnhe/everforest",
		"https://github.com/Shatur/neovim-ayu",
		"https://github.com/ellisonleao/gruvbox.nvim",
		"https://github.com/vague-theme/vague.nvim",
		"https://github.com/zenbones-theme/zenbones.nvim",
		"https://github.com/rktjmp/lush.nvim",
		"https://github.com/aktersnurra/no-clown-fiesta.nvim",
		"https://github.com/metalelf0/kintsugi-nvim",
	})

	-- Enable saved theme
	require("config.theme").apply()
end)
