-- installs lazy, our plugin manager for neovim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
    -- ------------ makes sure the nerdfont icons and colorscheme ------------
    -- preferred colorscheme right now
    {'space-chalk/spacechalk.nvim',
        lazy = false, -- loaded during startup since it's the main colorscheme
        priority = 1000, -- load this before all other start plugins
        config = function()
            -- load the colorscheme here
            vim.cmd.colorscheme('spacechalk')
            vim.g.colors_name = 'spacechalk'
        end,
    },

    { 'nvim-tree/nvim-web-devicons', lazy = true },

    -- -------------------- startup screen for neovim ------------------------
    {'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
        }
    },

    -- cute halloween dashboard for neovim start screen :3
    -- {'folke/drop.nvim'},

    -- -------------------------- status line --------------------------------
    {'nvim-lualine/lualine.nvim',
         lazy = false,
         dependencies = { 'nvim-tree/nvim-web-devicons' },
    },

    -- -------------------- floating window plugins --------------------------
    -- configurable floating terminal window, replaces 'hsalem7/nvim-k8s'
    {"numToStr/FTerm.nvim",
        cmd = {'FtermOpen', 'Gitui', 'Matrix', 'K9s'}
    },

    -- ------------------ sidebar file directory tree -----------------------
    {'nvim-neo-tree/neo-tree.nvim',
         cmd = "Neotree",
	 branch = "v2.x",
         dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
         },
    },

    -- ---------------- scroll bar for the right hand side -------------------
    {"petertriho/nvim-scrollbar"},

    -- ------------------------------ tab line -------------------------------
    {'romgrk/barbar.nvim',
        dependencies = {'nvim-tree/nvim-web-devicons'},
        lazy = true,
    },

    -- code refence at top of window
    {"utilyre/barbecue.nvim",
      name = "barbecue",
      version = "*",
      dependencies = {"SmiteshP/nvim-navic",
                      "nvim-tree/nvim-web-devicons"},
      opts = {show_dirname = false,
              show_basename = false,
              context_follow_icon_color = true,
              kinds = {
                    File = "",
                    Module = "",
                    Namespace = "",
                    Package = "",
                    Class = "",
                    Method = "",
                    Property = "󰀭",
                    Field = "🌾",
                    Constructor = "󰬢",
                    Enum = "",
                    Interface = "",
                    Function = "󰊕",
                    Variable = "󰫧",
                    Constant = "",
                    String = "",
                    Number = "",
                    Boolean = "",
                    Array = "",
                    Object = "",
                    Key = "",
                    Null = "",
                    EnumMember = "",
                    Struct = "",
                    Event = "",
                    Operator = "",
                    TypeParameter = "",
            },
        },
    },

    -- ------------------ dimming inactive windows ---------------------------
    {'levouh/tint.nvim'},

    -- ------------------------------ git ------------------------------------
    -- git plugin for running git commands with :git
    {'tpope/vim-fugitive',
        lazy = true,
    },

    -- puts a git + or - in side line to show git changes in file
    {'lewis6991/gitsigns.nvim'},

    -- ---------------- syntax highlighting installer ------------------------

    {'nvim-treesitter/nvim-treesitter'},
    -- I have this mostly for the :TSHighlightCapturesUnderCursor command
    -- https://github.com/nvim-treesitter/playground/pull/9
    {'nvim-treesitter/playground',
        lazy = true,
    },

    -- because indenting is still broken in treesitter for python
    -- ref: https://github.com/nvim-treesitter/nvim-treesitter/issues/1136
    {"yioneko/nvim-yati",
         dependencies = "nvim-treesitter/nvim-treesitter"
    },

    -- This is helpful for markdown -- 'junegunn/limelight.config/vim'
    {'junegunn/limelight.vim'},

    -- for markdown tables
    {'dhruvasagar/vim-table-mode'},

    -- ---------------- Language Server Protocol Plugins ---------------------
    --
    -- --------- completion for the above language servers and more ----------
    -- our preferred neovim autocompletion plugin
    {'hrsh7th/nvim-cmp',
        -- load cmp on InsertEnter
        event = "InsertEnter",
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            -- automatically type the closing ]"
            'windwp/nvim-autopairs',
            -- emojis and nerfont icon completions
            'hrsh7th/cmp-emoji',
            'chrisgrieser/cmp-nerdfont',
            -- nvim lua api completion
            'hrsh7th/cmp-nvim-lua'},
    },

    -- this helps to configure the built-in language server protocol for nvim
    {'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
        },
    },

    -- ------------------- fuzzy completion for files ------------------------
    -- telescope: extendable fuzzy finder over lists
    {'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = {'nvim-lua/plenary.nvim'}
    },

    -- --------------------- Language Specific Stuff -------------------------

    -- for highlighting hex colors (in vim, CSS, JS, HTML)
    {'norcalli/nvim-colorizer.lua',
        ft = {'css', 'lua'},
    },

    -- logging syntax and highlighting -- 'mtdl9/vim-log-highlighting'
    {'mtdl9/vim-log-highlighting'},

    -- terraform commands for neovim :)
    {'hashivim/vim-terraform',
        ft = "terraform",
    },
}

require("lazy").setup(plugins)
