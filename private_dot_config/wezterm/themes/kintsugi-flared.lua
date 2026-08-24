-- Kintsugi Dark Flared for Wezterm
-- Ported from the Ghostty theme (kintsugi-flared)
-- Based on metalelf0/kintsugi-nvim (flared variant)
-- https://github.com/metalelf0/kintsugi-nvim

local M = {}

function M.colors()
	return {
		foreground = "#BCAC8F",
		background = "#161618",

		cursor_bg = "#d4a943",
		cursor_fg = "#111111",
		cursor_border = "#d4a943",

		selection_fg = "#dddddd",
		selection_bg = "#393b31",

		scrollbar_thumb = "#393b31",
		split = "#393b31",

		ansi = {
			"#131314",
			"#D66848",
			"#678E87",
			"#DBAD49",
			"#798283",
			"#cc7f66",
			"#E08542",
			"#BCAC8F",
		},
		brights = {
			"#5f5f5f",
			"#EBA96C",
			"#a3be8c",
			"#DB9833",
			"#8fa3b3",
			"#b3a3d3",
			"#6ac6f2",
			"#dddddd",
		},
		tab_bar = {
			background = "#161618",
			active_tab = {
				bg_color = "#393b31",
				fg_color = "#BCAC8F",
				intensity = "Normal",
				underline = "None",
				italic = false,
				strikethrough = false,
			},
			inactive_tab = {
				bg_color = "#161618",
				fg_color = "#5f5f5f",
				intensity = "Normal",
				underline = "None",
				italic = false,
				strikethrough = false,
			},
			inactive_tab_hover = {
				bg_color = "#393b31",
				fg_color = "#BCAC8F",
				italic = false,
			},
			new_tab = {
				bg_color = "#161618",
				fg_color = "#d4a943",
			},
			new_tab_hover = {
				bg_color = "#393b31",
				fg_color = "#EBA96C",
			},
			inactive_tab_edge = "#393b31",
		},
	}
end

function M.window_frame() -- Fancy tab bar only
	return {
		active_titlebar_bg = "#161618",
		inactive_titlebar_bg = "#161618",
	}
end

return M
