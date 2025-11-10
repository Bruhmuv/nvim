return {
    "goolord/alpha-nvim",
    optional = true,
    opts = function(_, dashboard)
        local button = dashboard.button("p", " " .. " Projects", pick)
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
        table.insert(dashboard.section.buttons.val, 4, button)
    end,
}
