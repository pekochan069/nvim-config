return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local fzf = require("fzf-lua")
        -- local actions = fzf.actions

        -- files
        vim.keymap.set("n", "<leader>ff", fzf.files, {})
        vim.keymap.set("n", "<leader>fg", fzf.git_files, {})
        vim.keymap.set("n", "<leader>fb", fzf.buffers, {})
        -- git
        vim.keymap.set("n", "<leader>gc", fzf.git_commits, {})
        vim.keymap.set("n", "<leader>gs", fzf.git_status, {})
        -- search
        vim.keymap.set("n", "<leader>s\"", fzf.registers, {})
        vim.keymap.set("n", "<leader>sa", fzf.autocmds, {})
        vim.keymap.set("n", "<leader>sb", fzf.grep_curbuf, {})
        vim.keymap.set("n", "<leader>sc", fzf.command_history, {})
        vim.keymap.set("n", "<leader>sC", fzf.commands, {})
        vim.keymap.set("n", "<leader>sd", fzf.diagnostics_document, {})
        vim.keymap.set("n", "<leader>sD", fzf.diagnostics_workspace, {})
        vim.keymap.set("n", "<leader>sg", fzf.live_grep, {})
        vim.keymap.set("n", "<leader>sh", fzf.help_tags, {})
        vim.keymap.set("n", "<leader>sH", fzf.highlights, {})
        vim.keymap.set("n", "<leader>sj", fzf.jumps, {})
        vim.keymap.set("n", "<leader>sk", fzf.keymaps, {})
        vim.keymap.set("n", "<leader>sl", fzf.loclist, {})
        vim.keymap.set("n", "<leader>sM", fzf.man_pages, {})
        vim.keymap.set("n", "<leader>sm", fzf.marks, {})
        vim.keymap.set("n", "<leader>sR", fzf.resume, {})
        vim.keymap.set("n", "<leader>sq", fzf.quickfix, {})
        vim.keymap.set("n", "<leader>sw", fzf.grep_cword, {})
        vim.keymap.set("n", "<leader>ss", function ()
            fzf.lsp_document_symbols({
                regex_filter = symbols_filter,
            })
        end, {})
        vim.keymap.set("n", "<leader>sS", function ()
            fzf.lsp_workspace_symbols({
                regex_filter = symbols_filter,
            })
        end, {})

        fzf.setup({})
    end,
   -- keys = {
    --     -- files
    --     { "<leader>ff", require("fzf-lua").files(), desc = "Find Files (Root)" },
    --     { "<leader>fg", require("fzf-lua").git_files(), desc = "Find Files (Git)" },
    --     { "<leader>fb", require("fzf-lua").buffers(), desc = "Find Files (Buffer)" },
    --     { "<leader>gc", require("fzf-lua").git_commits(), desc = "Git Commits" },
    --     { "<leader>gs", require("fzf-lua").git_status(), desc = "Git Status" },
    --     { "<leader>s\"", require("fzf-lua").registers(), desc = "Registers" },
    --     { "<leader>sa", require("fzf-lua").autocmds(), desc = "Autocmds" },
    --     { "<leader>sb", require("fzf-lua").grep_curbuf(), desc = "Buffer" },
    --     { "<leader>sc", require("fzf-lua").command_history(), desc = "Command History" },
    --     { "<leader>sC", require("fzf-lua").commands(), desc = "Commands" },
    --     { "<leader>sd", require("fzf-lua").diagnostics_document(), desc = "Document Diagnostics" },
    --     { "<leader>sD", require("fzf-lua").diagnostics_workspace(), desc = "Workspace Diagnostics" },
    --     { "<leader>sg", require("fzf-lua").live_grep(), desc = "Grep (Root Dir)" },
    --     { "<leader>sh", require("fzf-lua").help_tags(), desc = "Help Page" },
    --     { "<leader>sH", require("fzf-lua").highlights(), desc = "Search Highlight Groups" },
    --     { "<leader>sj", require("fzf-lua").jumps(), desc = "Jumplist" },
    --     { "<leader>sk", require("fzf-lua").keymape(), desc = "Key Maps" },
    --     { "<leader>sl", require("fzf-lua").loclist(), desc = "Location List" },
    --     { "<leader>sM", require("fzf-lua").man_pages(), desc = "Map Pages" },
    --     { "<leader>sm", require("fzf-lua").marks(), desc = "Marks" },
    --     { "<leader>sR", require("fzf-lua").resume(), desc = "Resume" },
    --     { "<leader>sq", require("fzf-lua").quickfix(), desc = "Quickfix List" },
    --     { "<leader>sw", require("fzf-lua").grep_cword(), desc = "Work (Root Dir)" },
    --     { "<leader>ss", function() require("fzf-lua").lsp_document_symbols({
    --       regex_filter = symbols_filter,
    --     }) end, desc = "Goto Symbol" },
    --     { "<leader>sS", function ()
    --         require("fzf-lua").lsp_workspace_symbols({
    --             regex_filter = symbols_filter,
    --         })
    --     end, desc = "Goto Symbol (Workspace)" },
    -- },
}

