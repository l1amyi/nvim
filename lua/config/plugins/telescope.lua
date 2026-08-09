return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        vim.api.nvim_set_keymap("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>gg", "<Cmd>Telescope live_grep<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>fm", "<Cmd>Telescope marks<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>fj", "<Cmd>Telescope jumplist<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "<leader>fs", "<Cmd>lua vim.lsp.buf.document_symbol()<CR>", {noremap = true, silent = true})
    end
}
