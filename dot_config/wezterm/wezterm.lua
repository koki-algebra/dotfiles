local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- Window
config.initial_cols = 120
config.initial_rows = 28
config.window_padding = { left = 12, right = 12, top = 10, bottom = 10 }
config.window_background_opacity = 0.92
config.macos_window_background_blur = 20
config.window_decorations = 'RESIZE'

-- Font
config.font = wezterm.font_with_fallback({
  { family = 'Hack Nerd Font', weight = 'Regular' },
  { family = 'Hiragino Sans', weight = 'Regular' },
})
config.font_size = 16
config.line_height = 1.2
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

-- Color scheme: Catppuccin Mocha
config.color_scheme = 'Catppuccin Mocha'

-- Tab bar
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.tab_max_width = 32
config.colors = {
  tab_bar = {
    background = '#1e1e2e',
    active_tab = {
      bg_color = '#cba6f7',
      fg_color = '#1e1e2e',
      intensity = 'Bold',
    },
    inactive_tab = {
      bg_color = '#313244',
      fg_color = '#cdd6f4',
    },
    inactive_tab_hover = {
      bg_color = '#45475a',
      fg_color = '#cdd6f4',
    },
    new_tab = {
      bg_color = '#1e1e2e',
      fg_color = '#585b70',
    },
  },
}

-- Cursor
config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_rate = 500

-- Scrollback
config.scrollback_lines = 10000

return config
