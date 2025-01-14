return {
    "akinsho/bufferline.nvim",
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup{
            options = {
                mode = "buffer",
                number = "ordinal",
                -- 使用 nvim 内置lsp
                diagnostics = "nvim_lsp",
                -- 左侧让出 nvim-tree 的位置
                offsets = { {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "Directory",
                    text_align = "left"
                } }
            }
        }
        vim.api.nvim_set_keymap("n", "gt", ":BufferLineCycleNext<CR>", {noremap = true, silent = true})
        vim.api.nvim_set_keymap("n", "gT", ":BufferLineCyclePrev<CR>", {noremap = true, silent = true})
    end
}
