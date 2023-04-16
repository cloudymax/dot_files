local wezterm = require 'wezterm'

return {
       -- never play a bell sound
       audible_bell = "Disabled",

       -- initial size of the terminal
       initial_cols = 162,
       initial_rows = 50,

       -- font stuff
       -- don't complain if an icon or character is missing
       warn_about_missing_glyphs = false,
       font = wezterm.font_with_fallback { 'mononoki', 'Symbols Nerd Font Mono' },
       font_size = 15,

       -- window look and feel
       hide_tab_bar_if_only_one_tab = true,
       window_decorations = "RESIZE",
       -- transparency
       window_background_opacity = 0.95,

       -- key mappings
       keys = {
        -- This will create a new split and run your default program inside it
         {
           key = 's',
           mods = 'CTRL',
           action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
         },
       },

       -- default terminal colors
       colors = {
           background = '#232336',
           foreground = '#c0caf5',

           -- Overrides the cell background color when the current cell is occupied by the
           -- cursor and the cursor style is set to Block
           cursor_bg = '#97e178',
           -- Overrides the text color when the current cell is occupied by the cursor
           cursor_fg = 'black',
           -- Specifies the border color of the cursor when the cursor style is set to Block,
           -- or the color of the vertical or horizontal bar when the cursor style is set to
           -- Bar or Underline.
           cursor_border = '#6eb3ec',

           -- the foreground color of selected text
           selection_fg = 'black',
           -- the background color of selected text
           selection_bg = '#f6f76a',

           -- The color of the scrollbar "thumb"; the portion that represents the current viewport
           scrollbar_thumb = '#222222',

           -- The color of the split lines between panes
           split = '#6eb3ec',
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

       -- make clickable hyperlinks work
       hyperlink_rules = {

       -- Linkify things that look like URLs and the host has a TLD name.
       -- Compiled-in default. Used if you don't specify any hyperlink_rules.
       {
         regex = '\\b\\w+://[\\w.-]+\\.[a-z]{2,15}\\S*\\b',
         format = '$0',
       },

       -- linkify email addresses
       -- Compiled-in default. Used if you don't specify any hyperlink_rules.
       {
         regex = [[\b\w+@[\w-]+(\.[\w-]+)+\b]],
         format = 'mailto:$0',
       },

       -- file:// URI
       -- Compiled-in default. Used if you don't specify any hyperlink_rules.
       {
         regex = [[\bfile://\S*\b]],
         format = '$0',
       },

       -- Linkify things that look like URLs with numeric addresses as hosts.
       -- E.g. http://127.0.0.1:8000 for a local development server,
       -- or http://192.168.1.1 for the web interface of many routers.
       {
         regex = [[\b\w+://(?:[\d]{1,3}\.){3}[\d]{1,3}\S*\b]],
         format = '$0',
       },

       -- Make task numbers clickable
       -- The first matched regex group is captured in $1.
       {
         regex = [[\b[tT](\d+)\b]],
         format = 'https://example.com/tasks/?t=$1',
       },

       -- Make username/project paths clickable. This implies paths like the following are for GitHub.
       -- ( "nvim-treesitter/nvim-treesitter" | wbthomason/packer.nvim | wez/wezterm | "wez/wezterm.git" )
       -- As long as a full URL hyperlink regex exists above this it should not match a full URL to
       -- GitHub or GitLab / BitBucket (i.e. https://gitlab.com/user/project.git is still a whole clickable URL)
       {
         regex = [[["]?([\w\d]{1}[-\w\d]+)(/){1}([-\w\d\.]+)["]?]],
         format = 'https://www.github.com/$1/$3',
       },
      },
}
