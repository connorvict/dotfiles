-- ┌─────────────────────────┐
-- │ Plugins outside of MINI │
-- └─────────────────────────┘

local add = vim.pack.add
local now, now_if_args, later = Config.now, Config.now_if_args, Config.later

now_if_args(function()
	local ts_update = function()
		vim.cmd("TSUpdate")
	end
	Config.on_packchanged("nvim-treesitter", { "update" }, ts_update, ":TSUpdate")

	add({
		"https://github.com/nvim-treesitter/nvim-treesitter",
		"https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
	})
	local languages = {
		"lua",
		"vimdoc",
		"markdown",
		"css",
		"html",
		"svelte",
		"javascript",
		"typescript",
		"go",
		"templ",
		"odin",
		"rust",
	}
	local isnt_installed = function(lang)
		return #vim.api.nvim_get_runtime_file("parser/" .. lang .. ".*", false) == 0
	end
	local to_install = vim.tbl_filter(isnt_installed, languages)
	if #to_install > 0 then
		require("nvim-treesitter").install(to_install)
	end

	local filetypes = {}
	for _, lang in ipairs(languages) do
		for _, ft in ipairs(vim.treesitter.language.get_filetypes(lang)) do
			table.insert(filetypes, ft)
		end
	end
	local ts_start = function(ev)
		vim.treesitter.start(ev.buf)
	end
	Config.new_autocmd("FileType", filetypes, ts_start, "Start tree-sitter")
end)

later(function()
	add({ "https://github.com/stevearc/conform.nvim" })
	require("conform").setup({
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
		},
	})
end)

now(function()
	add({
		"https://github.com/neovim/nvim-lspconfig",
		"https://github.com/mason-org/mason.nvim",
		"https://github.com/mason-org/mason-lspconfig.nvim",
		"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
	})
	require("mason").setup()
	require("mason-lspconfig").setup()
	require("mason-tool-installer").setup({
		ensure_installed = {
			-- Python
			"uv",
			"ruff",
			"ty",
			-- Lua
			"lua_ls",
			"stylua",
			-- Javascript
			"biome",
			"tsgo",
			"svelte-language-server",
			-- HTML
			"html-lsp",
			-- Golang
			"gopls",
			"templ",
			-- Odin
			"ols",
			"codelldb",
			-- Rust
			"rust-analyzer",
		},
	})
end)

later(function()
	add({ "https://github.com/rafamadriz/friendly-snippets" })
end)

now(function()
	add({ "https://github.com/mfussenegger/nvim-dap", "https://github.com/igorlfs/nvim-dap-view" })
	add({
		"https://github.com/NANDquark/nvim-dap-odin",
		"https://github.com/leoluz/nvim-dap-go",
		"https://github.com/julianolf/nvim-dap-lldb",
	})
	local dap = require("dap")
	dap.adapters.codelldb = {
		type = "executable",
		command = "codelldb",
	}
	require("dap-go").setup()
	require("dap-view").setup()
	require("nvim-dap-odin").setup({ notifications = false })

	local set_dap_highlights = function()
		vim.api.nvim_set_hl(0, "debugPC", { link = "Visual" })
	end
	set_dap_highlights()
	Config.new_autocmd("ColorScheme", nil, set_dap_highlights, "Set DAP highlights")

	vim.api.nvim_create_user_command("DapConditionalBreakpoint", function()
		require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
	end, { desc = "Set conditional breakpoint", force = true })

	vim.api.nvim_create_user_command("DapRunLast", function()
		require("dap").run_last()
	end, { desc = "Run last debug session", force = true })
end)

now(function()
	add({ "https://github.com/stevearc/overseer.nvim" })
	require("overseer").setup()
end)

-- Honorable mentions =========================================================

-- 'mason-org/mason.nvim' (a.k.a. "Mason") is a great tool (package manager) for
-- installing external language servers, formatters, and linters. It provides
-- a unified interface for installing, updating, and deleting such programs.
--
-- The caveat is that these programs will be set up to be mostly used inside Neovim.
-- If you need them to work elsewhere, consider using other package managers.
--
-- You can use it like so:
-- now_if_args(function()
--   add({ 'https://github.com/mason-org/mason.nvim' })
--   require('mason').setup()
-- end)

-- Beautiful, usable, well maintained color schemes outside of 'mini.nvim' and
-- have full support of its highlight groups. Use if you don't like 'miniwinter'
-- enabled in 'plugin/30_mini.lua' or other suggested 'mini.hues' based ones.
-- Config.now(function()
--  -- Install only those that you need
--  add({
--    'https://github.com/sainnhe/everforest',
--    'https://github.com/Shatur/neovim-ayu',
--    'https://github.com/ellisonleao/gruvbox.nvim',
--  })
--
--   -- Enable only one
--   vim.cmd('color everforest')
-- end)
