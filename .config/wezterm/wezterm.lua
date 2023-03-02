local wezterm = require 'wezterm'

return {
       warn_about_missing_glyphs = false,
       audible_bell = "Disabled",
       initial_cols = 162,
       initial_rows = 50,
       font_size = 15,
       hide_tab_bar_if_only_one_tab = true,
       window_decorations = "RESIZE",
       window_background_opacity = 0.95,
       -- default terminal colors
       colors = {
           background = '#232336',
           foreground = '#c0caf5',
           ansi = {
               '#282727',
               '#fe8ea2',
               '#97e178',
               '#f6f76a',
               '#6eb3ec',
               '#ef8ef6',
               '#86f0e4',
               '#dadfe0',
           },
           brights = {
               '#282727',
               '#fe8ea2',
               '#97e178',
               '#f6f76a',
               '#6eb3ec',
               '#ef8ef6',
               '#86f0e4',
               '#dadfe0',
           },
       },
}
