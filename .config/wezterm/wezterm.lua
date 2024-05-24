local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()

-- config.color_scheme = "Vs Code Light+ (Gogh)"
config.color_scheme = "Catppuccin Mocha (Gogh)"
-- config.color_scheme = 'Catppuccin Latte'

config.font_size = 13.0

config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

config.window_decorations = "RESIZE"

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

-- Smart split
local s = require("smart-split")

config.keys = {
	-- move between split panes
	s.split_nav("move", "h"),
	s.split_nav("move", "j"),
	s.split_nav("move", "k"),
	s.split_nav("move", "l"),
	-- resize panes
	s.split_nav("resize", "h"),
	s.split_nav("resize", "j"),
	s.split_nav("resize", "k"),
	s.split_nav("resize", "l"),
}

return config
