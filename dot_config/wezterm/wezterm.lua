local wezterm = require("wezterm")
local features = require("features")
local G = require("globals")
local config = wezterm.config_builder()

local font
-- if G.font.family == "Default" then
-- 	font = wezterm.font_with_fallback({})
-- else
font = wezterm.font_with_fallback({
	G.font,
	{ family = "Symbols Nerd Font Mono", scale = 0.8 },
	{ family = "Segoe UI Emoji", scale = 0.9 },
})
-- end

config.font_rules = { { intensity = "Bold", font = font }, { intensity = "Normal", font = font } }
config.font_size = 16

if G.OLED then
	G.background = "#000000"
end

local scheme = wezterm.color.get_builtin_schemes()[G.colorscheme]
scheme.background = G.background or scheme.background

for colorscheme, overrides in pairs({
	["Poimandres"] = { background = "#0E0F15" },
	["catppuccin-mocha"] = { background = "#11111b" },
	["rose-pine"] = { background = "#12101A" },
	["rose-pine-moon"] = { background = "#12101A" },
	["tokyonight"] = { background = "#15161F" },
	["tokyonight_moon"] = { background = "#15161F" },
	["Gruvbox Material (Gogh)"] = { background = "#0f0f0f" },
	["Nightfly (Gogh)"] = { background = "#010F1A" },
}) do
	if G.colorscheme == colorscheme then
		for property, value in pairs(overrides) do
			scheme[property] = value
			scheme.background = G.background or value
		end
	end
end

config.color_scheme = "CustomTheme"
config.color_schemes = { ["CustomTheme"] = scheme }
config.inactive_pane_hsb = { saturation = 1, brightness = 1 }
config.command_palette_bg_color = scheme.background
config.command_palette_fg_color = scheme.foreground

-- WINDOW
config.enable_tab_bar = true
config.window_padding = G.padding
config.window_close_confirmation = "NeverPrompt"
config.macos_window_background_blur = 50
config.window_background_opacity = G.opacity
config.window_decorations = "RESIZE | MACOS_FORCE_DISABLE_SHADOW"
config.adjust_window_size_when_changing_font_size = false
config.initial_cols = 140
config.initial_rows = 40
config.enable_scroll_bar = false
config.window_frame = { font = wezterm.font({ family = G.font, weight = 400 }) }
config.command_palette_font_size = 16
config.front_end = "WebGpu"
config.bidi_enabled = true

-- CURSOR
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"
config.hide_mouse_cursor_when_typing = true
config.max_fps = 240
config.animation_fps = 240

-- ENV
config.set_environment_variables = {
	PATH = "/opt/homebrew/bin:" .. os.getenv("PATH"),
}

config.disable_default_key_bindings = true
-- Leader is the same as my old tmux prefix
config.leader = { key = "t", mods = "CTRL" }

config.keys = {
	{
		key = "q",
		mods = "SUPER",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "c",
		mods = "SUPER",
		action = wezterm.action({ CopyTo = "Clipboard" }),
	},
	{
		key = "v",
		mods = "SUPER",
		action = wezterm.action({ PasteFrom = "Clipboard" }),
	},
	{
		key = "p",
		mods = "LEADER",
		action = wezterm.action.ActivateCommandPalette,
	},
	{
		key = "-",
		mods = "LEADER",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "\\",
		mods = "LEADER",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "m",
		mods = "LEADER",
		action = wezterm.action.TogglePaneZoomState,
	},
	{
		key = "[",
		mods = "LEADER",
		action = wezterm.action.ActivateCopyMode,
	},
	{
		key = "c",
		mods = "LEADER",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "1",
		mods = "LEADER",
		action = wezterm.action({ ActivateTab = 0 }),
	},
	{
		key = "2",
		mods = "LEADER",
		action = wezterm.action({ ActivateTab = 1 }),
	},
	{
		key = "3",
		mods = "LEADER",
		action = wezterm.action({ ActivateTab = 2 }),
	},
	{
		key = "4",
		mods = "LEADER",
		action = wezterm.action({ ActivateTab = 3 }),
	},
	{
		key = "5",
		mods = "LEADER",
		action = wezterm.action({ ActivateTab = 4 }),
	},
	{
		key = "6",
		mods = "LEADER",
		action = wezterm.action({ ActivateTab = 5 }),
	},
	{
		key = "7",
		mods = "LEADER",
		action = wezterm.action({ ActivateTab = 6 }),
	},
	{
		key = "8",
		mods = "LEADER",
		action = wezterm.action({ ActivateTab = 7 }),
	},
	{
		mods = "LEADER",
		key = "=",
		action = wezterm.action.PaneSelect({
			mode = "SwapWithActive",
		}),
	},
	{ key = "T", mods = "LEADER", action = wezterm.action_callback(features.theme_switcher) },
	{ key = "F", mods = "LEADER", action = wezterm.action_callback(features.font_switcher) },
}
return config
