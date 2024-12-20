local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
        if vim.v.shell_error ~= 0 then
            vim.api.nvim_echo({
                { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
                { out, "WarningMsg" },
                { "\nPress any key to exit..." },
            }, true, {})
            vim.fn.getchar()
            os.exit(1)
        end
    end

vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)


-- Setup lazy.nvim
require("lazy").setup({
    require("config.plugins.telescope"),
    require("config.plugins.flash"),
    require("config.plugins.theme"),
    require("config.plugins.lualine"),
    require("config.plugins.nvimtree"),
    require("config.plugins.tmuxnavigator"),
    require("config.plugins.treesitter"),
    require("config.plugins.mason"),
    require("config.plugins.lsp"),
    require("config.plugins.cmp"),
    require("config.plugins.bufferline"),
    require("config.plugins.rainbow"),
},{
})
