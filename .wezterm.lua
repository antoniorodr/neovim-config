local wezterm = require "wezterm"

local config = wezterm.config_builder()

config.font = wezterm.font("0xProto Nerd Font")
config.font_size = 16
config.color_scheme = "tokyonight_moon"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"
config.enable_kitty_graphics = true

-- Custom colors
config.colors = {
  foreground = '#ffffff',
  background = '#15161b',
  cursor_bg = '#ffdb29',
  cursor_fg = '#15161b',
  selection_bg = '#3d424d',
  split = '#5C6773',
  ansi = {
    '#000000', '#ff5555', '#95FB79', '#FFEE99',
    '#82aaff', '#D2A6FF', '#82aaff', '#ffffff',
  },
  brights = {
    '#656565', '#ff5555', '#95FB79', '#FFEE99',
    '#82aaff', '#D2A6FF', '#82aaff', '#ffffff',
  },
  tab_bar = {
    background = '#15161b',
    active_tab = {
      bg_color = '#1e2029', fg_color = '#ffffff', intensity = 'Normal',
      underline = 'None', italic = false, strikethrough = false,
    },
    inactive_tab = {
      bg_color = '#15161b', fg_color = '#5C6773', intensity = 'Half',
      underline = 'None', italic = false, strikethrough = false,
    },
    inactive_tab_hover = {
      bg_color = '#25282e', fg_color = '#ffffff', intensity = 'Normal',
      underline = 'None', italic = false, strikethrough = false,
    },
    new_tab = { bg_color = '#15161b', fg_color = '#5C6773' },
    new_tab_hover = { bg_color = '#25282e', fg_color = '#ffffff', italic = false },
  },
}

wezterm.on("gui-startup", function(cmd)
    local screen = wezterm.gui.screens().active
    local ratio = 1
    local width, height = screen.width * ratio, screen.height * ratio
    local tab, pane, window = wezterm.mux.spawn_window {
        position = {
            x = (screen.width - width) / 2,
            y = (screen.height - height) / 2,
            origin = "ActiveScreen"
        }
    }
    window:gui_window():set_inner_size(width, height)
end)

return config
