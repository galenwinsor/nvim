-- set leader key to space
vim.g.mapleader = " "

local km = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
km.set("i", "jk", "<ESC>")

-- clear search highlights
km.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
km.set("n", "x", '"_x')

-- increment/decrement numbers
km.set("n", "<leader>+", "<C-a>") -- increment
km.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
km.set("n", "<leader>sv", "<C-w>v") -- split window vertically
km.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
km.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
km.set("n", "<leader>sx", ":close<CR>") -- close current split window

km.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
km.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
km.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
km.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- file manager
km.set("n", "<leader>e", ":Vex<CR>") -- open file manager
