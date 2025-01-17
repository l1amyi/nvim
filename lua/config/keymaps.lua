vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<esc>", { noremap = true }, {desc = "enter normal model"})

vim.keymap.set("n", "<leader>sv", "<C-w>v", { noremap = true }, {desc = "split windows"})
vim.keymap.set("n", "<leader>ss", "<C-w>s", { noremap = true }, {desc = "split windows"})

vim.keymap.set("n", "<leader>o", "<CMD>only<CR>", { noremap = true },  {desc = "close other window"})

vim.keymap.set("n", "<leader>nh", "<CMD>nohl<CR>", { noremap = true }, {desc = "no highlight"})


-- nvim tree
vim.keymap.set("n", "<leader>e", "<CMD>NvimTreeToggle<CR>", { noremap = true}, {desc = "open file tree"})
