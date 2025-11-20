return {
    {
        "dccsillag/magma-nvim",
        build = ":UpdateRemotePlugins",
        ft = { "python", "julia", "r", "lua", "csharp" }, -- or any languages you want
        init = function()
            vim.g.magma_automatically_open_output = false
            vim.g.magma_image_provider = "none" -- safer for LazyVim UI plugins
            vim.g.magma_wrap_output = false
            vim.g.magma_no_default_keymaps = true -- IMPORTANT: avoid conflicts
        end,
        keys = {
            -- Evaluate the current cell
            { "<leader>mc", "<cmd>MagmaEvaluateOperator<CR>", desc = "Magma Evaluate Operator" },

            -- Evaluate current line
            { "<leader>ml", "<cmd>MagmaEvaluateLine<CR>", desc = "Magma Evaluate Line" },

            -- Evaluate visual selection
            {
                "<leader>mv",
                "<cmd><C-u>MagmaEvaluateVisual<CR>",
                mode = "v",
                desc = "Magma Evaluate Visual",
            },

            -- Evaluate current buffer
            { "<leader>mb", "<cmd>MagmaEvaluateBuffer<CR>", desc = "Magma Evaluate Buffer" },

            -- Reevaluate the last cell
            { "<leader>mr", "<cmd>MagmaReevaluateCell<CR>", desc = "Magma Reevaluate Cell" },

            -- Show / hide output window
            { "<leader>mo", "<cmd>MagmaShowOutput<CR>", desc = "Magma Show Output" },

            -- Delete all outputs
            { "<leader>md", "<cmd>MagmaDelete<CR>", desc = "Magma Delete Output" },
        },
    },
}
