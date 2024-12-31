-- Open netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "gv", "<C-v>")

-- Move highlighted lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")

-- Keep cursor at the same position when doing J
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor at the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Doesn't overwrite paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Replace every word on buffer
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Moving
-- vim.keymap.set("n", "j", "k")
-- vim.keymap.set("n", "k", "j")

-- Terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

