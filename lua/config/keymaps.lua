vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<esc>", { noremap = true })

vim.keymap.set("n", "<leader>sv", "<C-w>v", { noremap = true })
vim.keymap.set("n", "<leader>ss", "<C-w>s", { noremap = true })

vim.keymap.set("n", "<leader>o", ":only<CR>", { noremap = true })

vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { noremap = true })

-- nvim tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true})
