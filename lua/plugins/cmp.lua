return {
    "saghen/blink.cmp",
    ---@class PluginLspOpts
    opts = {
        signature = { enabled = true },
        keymap = {
            preset = "super-tab",

            -- Completion selection
            ["<Tab>"] = {
                "accept",
                "select_next",
                "fallback",
            },
            ["<S-Tab>"] = {
                "select_prev",
                "fallback",
            },

            -- Enter: snippet jump OR newline only
            ["<CR>"] = {
                function(cmp)
                    if cmp.snippet_active() then
                        cmp.snippet_forward()
                        return true
                    end
                end,
                "fallback", -- this is what actually inserts the newline
            },

            -- Optional: backward snippet jump
            ["<S-CR>"] = {
                function(cmp)
                    if cmp.snippet_active() then
                        cmp.snippet_backward()
                        return true
                    end
                end,
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
