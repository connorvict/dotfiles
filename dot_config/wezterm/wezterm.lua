local wezterm = require("wezterm")
local config = {}

-- Font configuration
config.font = wezterm.font("BlexMono Nerd Font")

-- Window configuration
config.window_padding = { left = 4, right = 4, top = 4, bottom = 4 }
config.window_close_confirmation = "NeverPrompt"
config.hide_tab_bar_if_only_one_tab = true

-- Performance configuration
config.scrollback_lines = 5000
config.max_fps = 240
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

-- Keybindings configuration
config.leader = { key = "w", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	{
		key = "\\",
		mods = "LEADER",
		action = wezterm.action.SplitPane({ direction = "Right", size = { Percent = 50 } }),
	},
	{ key = "-", mods = "LEADER", action = wezterm.action.SplitPane({ direction = "Down", size = { Percent = 50 } }) },
	{ key = "d", mods = "LEADER", action = wezterm.action.CloseCurrentPane({ confirm = false }) },
	{ key = "f", mods = "LEADER", action = wezterm.action.TogglePaneZoomState },
	{ key = "l", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Right") },
	{ key = "h", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Left") },
}

-- WSL configuration
config.wsl_domains = { { name = "WSL:Arch", distribution = "Arch", default_cwd = "~" } }
config.default_domain = "WSL:Arch"

-- Color configuration
local colors = {
	foreground = "#EBDBB2",
	background = "#1D2021",
	cursor_bg = "#EBDBB2",
	cursor_fg = "#1D2021",
	cursor_border = "#EBDBB2",
	selection_fg = "#a89984",
	selection_bg = "#292929",
	scrollbar_thumb = "#222222",
	split = "#444444",
	ansi = { "#595959", "#EA6962", "#A9B665", "#D8A657", "#7DAEA3", "#D3869B", "#89B482", "#EBDBB2" },
	brights = { "#595959", "#EA6962", "#A9B665", "#D8A657", "#7DAEA3", "#D3869B", "#89B482", "#EBDBB2" },
	indexed = { [136] = "#af8700" },
	compose_cursor = "#e78a4e",
	copy_mode_active_highlight_bg = { Color = "#292929" },
	copy_mode_active_highlight_fg = { Color = "#A89984" },
	copy_mode_inactive_highlight_bg = { Color = "#1D2021" },
	copy_mode_inactive_highlight_fg = { Color = "#EBDBB2" },
	quick_select_label_bg = { Color = "#e78a4e" },
	quick_select_label_fg = { Color = "#EBDBB2" },
	quick_select_match_bg = { Color = "#7DAEA3" },
	quick_select_match_fg = { Color = "#EBDBB2" },
}
config.colors = colors
config.default_cursor_style = "SteadyBar"

return config
