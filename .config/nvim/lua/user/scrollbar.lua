require("scrollbar").setup({
    excluded_filetypes = {
        "prompt",
        "TelescopePrompt",
        "dashboard",
        "dashboardPrompt"
    },
    set_highlights = false,
    handlers = {
        cursor = true,
        diagnostic = true,
        handle = true,
        -- search = false, -- Requires hlslens
    },
    marks = {
        Error = {
            text = { "", "" },
            priority = 2,
            gui=nil,
            color = nil,
            cterm=nil,
            color_nr = nil, -- cterm
            highlight = "DiagnosticVirtualTextError",
        },
        Warn = {
            text = { "裂", "" },
            priority = 3,
            gui=nil,
            color = nil,
            cterm=nil,
            color_nr = nil, -- cterm
            highlight = "DiagnosticVirtualTextWarn",
        },
    }
})
