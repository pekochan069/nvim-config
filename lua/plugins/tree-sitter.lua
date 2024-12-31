return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_update = { "c", "cpp", "gitignore", "json", "lua", "markdown" },
        auto_install = true,
    },
}
