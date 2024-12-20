-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.hide_tab_bar_if_only_one_tab = true
config.colors = {
	background = "#242424",
	cursor_bg = "#ffffff",
	cursor_fg = "#000000",
}

-- and finally, return the configuration to wezterm
return config
