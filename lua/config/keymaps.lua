vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<esc>", { noremap = true })

vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>ss", "<C-w>s")

vim.keymap.set("n", "<leader>o", ":only<CR>")

-- nvim tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")