return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
    },
    opts = {
        ensure_installed = { "clangd", "harper_ls", "lua_ls" },
    },
}
