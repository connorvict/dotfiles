return {
	name = "odin run",
	builder = function()
		local file = vim.fn.expand("%:p")
		-- Full path to current file (see :help expand())
		return {
			cmd = { "odin", "run", file, "-file" },
		}
	end,
	-- provide a condition so the task will only be available when you are in a c++ file
	condition = {
		filetype = { "odin" },
	},
}
