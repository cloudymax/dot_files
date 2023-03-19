-- sometimes neovim can't remember where python is if you install with linuxbrew
-- if vim.loop.os_uname().sysname == 'Linux'
--	then
--    vim.g.python3_host_prog = '/home/linuxbrew/.linuxbrew/bin/python3.11'
-- end

-- turn off the mouse scrolling because it is confusing
vim.opt.mousescroll = 'ver:0,hor:0'

-- line numbers for debugging and screen sharing, takes up 4 columns
vim.opt.number = true
vim.opt.numberwidth = 4

-- highlight current line
vim.opt.cursorline = true

-- highlighted column 80, only on python files, to keep lines shorter
vim.opt.colorcolumn = '80'

-- vim.opt.termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- make searching case insensitive
vim.opt.ignorecase = true

-- load plugins
require('user.lazy')

-- --------- Plugin configs that have to be called after lazy --------------
-- starting page for neovim
require('user.dashboard')

-- completion from nvim-cmp
require('user.completion')

-- Language Server configs and other syntax checking and highlight tools
require('user.lsp-configs')
require('user.tree-sitter')

-- folding and indentation
require('user.folding')
require('user.indent')

-- tab line at top of window for tabs when there's more than one tab :)
require('user.barbar')
-- status line at bottom of window for cool file facts 
require('user.lualine')

-- directory tree; can open with :Neotree
require('user.neo-tree')

-- scrollbar on the right side of the screen that also shows errors
require("user.gitsigns")
require("user.scrollbar")

-- floating windows
require('user.fterm')

-- syntax highlighting for hex codes
require('user.nvim-colorizer')

-- dim inactive windows
require("tint").setup()
