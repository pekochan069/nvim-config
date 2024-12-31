return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "frappe",
            transparent_background = true,
            integration = {
                blink = true,
                harpoon = true,
                mason = true,
                nvim_surround = true,
                which_key = true,
            },
            highlight_overrides = {
                frappe = function(C)
                    return {
                        LineNr = { fg = C.surface2 }
                    }
                end
            },
        })
        vim.cmd.colorscheme "catppuccin"
    end
}
