return {
    "saghen/blink.cmp",
    ---@class PluginLspOpts
    opts = {
        signature = { enabled = true },
        keymap = {
            preset = "super-tab",

            ["<Tab>"] = {
                "select_next",
                "fallback",
            },
            ["<S-Tab>"] = {
                "select_prev",
                "fallback",
            },

            -- Enter: jump only if a snippet is active
            ["<CR>"] = {
                function(cmp)
                    if cmp.snippet_active() then
                        return cmp.snippet_forward()
                    end
                    return cmp.accept()
                end,
                "fallback",
            },

            ["<S-CR>"] = {
                function(cmp)
                    if cmp.snippet_active() then
                        return cmp.snippet_backward()
                    end
                    return cmp.fallback()
                end,
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
