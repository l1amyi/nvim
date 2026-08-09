return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.config").setup({})

        -- nvim 0.12 内置了 treesitter 高亮和缩进，无需额外配置
        -- parser 按需自动安装，也可手动 :TSInstall <lang>
    end
}
