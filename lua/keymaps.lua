local M = {}

M.general = {
    n = {
        { "<leader>w", "<cmd>w<cr>",   "save buffer" },
        { "<leader>q", "<cmd>q<cr>",   "quit" },
        { "<C-h>",     "<C-w>h",       "switch buffer left" },
        { "<C-j>",     "<C-w>j",       "switch buffer down" },
        { "<C-k>",     "<C-w>k",       "switch buffer up" },
        { "<C-l>",     "<C-w>l",       "switch buffer right" },
        { "<ESC>",     "<cmd>noh<cr>", "no highlight" },
        { "<C-d>",     "<C-d>zz" },
        { "n",         "nzzzv" },
        { "N",         "Nzzzv" }
    }
}

M.neotree = {
    n = {
        { "<leader>e", "<CMD>Neotree toggle<CR>", desc = "toggle" }
    }
}

M.telescope = {
    n = {
        { "<leader>ff", "<CMD>Telescope git_files<CR>",  "find git files" },
        { "<leader>fp", "<CMD>Telescope find_files<CR>", "find files" },
        { "<leader>fw", "<CMD>Telescope live_grep<CR>",  "find a word" },
        { "<leader>fc", "<CMD>Telescope commands<CR>",   "find commands" },
        { "<leader>fk", "<CMD>Telescope keymaps<CR>",    "find keymaps" },
    }
}

M.nvimcomment = {
    n = {
        { "<leader>/", "<CMD>CommentToggle<CR>j", mode = { "n" } },
    },
    v = {
        { "<leader>/", ":'<,'>CommentToggle<CR>gv<esc>j", mode = { "v" } }
    }
}

M.bufferline = {
    n = {
        { "<S-l>",     "<cmd>BufferLineCycleNext<cr>", "next buffer" },
        { "<S-h>",     "<cmd>BufferLineCyclePrev<cr>", "previous buffer" },
        { "<leader>x", "<cmd>bd<cr>",                  "close buffer" }
    }
}

M.lsp = {
    n = {
        {
            "<leader>lr",
            function()
                vim.lsp.buf.rename()
            end,
            "rename symbol" },
        {
            "<leader>la",
            function()
                vim.lsp.buf.code_action()
            end,
            "code actions" },
        {
            "<leader>wa",
            function()
                vim.lsp.buf.add_workspace_folder()
            end,
            "add directory" },
        {
            "<leader>wl",
            function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end,
            "view directories" }
    }
}

return M
