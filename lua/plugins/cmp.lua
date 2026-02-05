return {
    "saghen/blink.cmp",
    ---@class PluginLspOpts
    opts = {
        signature = { enabled = true },
        keymap = {
            preset = "super-tab",
            -- Use Enter to jump forward through arguments/snippets
            ["<CR>"] = {
                "accept",
                "snippet_forward",
                "fallback",
            },
            ["<S-CR>"] = {
                "snippet_backward",
                "fallback",
            },
        },
        completion = {
            menu = {
                border = "rounded",
                winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
            },
            documentation = { window = { border = "rounded" } },
        },
    },
}
