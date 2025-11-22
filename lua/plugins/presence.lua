return {
    "andweeb/presence.nvim",
    lazy = false, -- load on startup so Discord presence works immediately
    config = function()
        require("presence").setup({
            -- General options
            auto_update = true,
            neovim_image_text = "Neovim",
            main_image = "file", -- "neovim" or "file"
            client_id = "793271441293967371",
            log_level = nil,
            debounce_timeout = 10,
            enable_line_number = false,
            blacklist = {},
            buttons = true,
            file_assets = {},

            -- Rich presence text
            editing_text = "Editing %s",
            file_explorer_text = "Browsing %s",
            git_commit_text = "Committing changes",
            plugin_manager_text = "Managing plugins",
            reading_text = "Reading %s",
            workspace_text = "Working on %s",
            line_number_text = "Line %s out of %s",

            -- Button options
            show_time = true,
        })
    end,
}
