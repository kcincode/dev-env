local wezterm = require("wezterm")
local config = {}

config.max_fps = 120

config.color_scheme = "catppuccin-mocha"

config.font = wezterm.font("MesloLGS Nerd Font")
config.font_size = 14

config.initial_cols = 90
config.initial_rows = 32

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

config.window_padding = {
	left = 2,
	right = 2,
	top = 2,
	bottom = 0,
}

return config
