-- this file is for customizations for floating terminals in neovim

local fterm = require("FTerm")

-- ---------------------------- open gitui -----------------------------------
-- gitui must be installed beforehand with brew install gitui
local gitui = fterm:new({
    ft = 'fterm_gitui',
    cmd = "gitui",
    dimensions = {
        height = 0.9,
        width = 0.9
    }
})

-- Use this to toggle gitui in a floating terminal
-- firt arg of 'n' is for normal mode
-- <A-g> are keys: Alt + g (alt is option on macOS)
vim.keymap.set('n', '<A-g>', function()
    gitui:toggle()
end)


-- ------------------------------ open k9s -----------------------------------

-- install k9s beforehand: https://k9scli.io/topics/install/
local k9s = fterm:new({
    ft = 'fterm_k9s',
    cmd = "k9s",
    dimensions = {
        height = 0.9,
        width = 0.9
    }
})

-- Use this to toggle k9s in a floating terminal
-- firt arg of 'n' is for normal mode
-- <A-b> are keys: Alt + b (alt is option on macOS)
vim.keymap.set('n', '<A-b>', function()
    k9s:toggle()
end)
