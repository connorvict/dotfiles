local wezterm = require("wezterm")

return {
	color_scheme = "kanagawabones",
	font = wezterm.font_with_fallback({
		"JetBrains Mono",
		{ family = "Symbols Nerd Font Mono", scale = 0.8 },
		{ family = "Segoe UI Emoji", scale = 0.9 },
	}),
	default_cursor_style = "SteadyBar",
	use_cap_height_to_scale_fallback_fonts = true,
	font_size = 14.0,
	scrollback_lines = 5000,
	hide_tab_bar_if_only_one_tab = true,
	--default_domain = "WSL:Arch",
	max_fps = 165,
}
