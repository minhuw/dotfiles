-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.font = wezterm.font("Cascadia Code")
config.font_size = 13

config.color_scheme = 'PencilDark'

config.enable_tab_bar = true 
config.tab_bar_at_bottom = true

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 10
config.native_macos_fullscreen_mode = true

-- and finally, return the configuration to wezterm
return config
