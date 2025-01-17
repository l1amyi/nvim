return {
    'akinsho/toggleterm.nvim',
    event = 'VeryLazy',
    config = function()
        local status_ok, toggleterm = pcall(require, 'toggleterm')
        if not status_ok then
            return
        end

        toggleterm.setup({
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 2,
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            direction = 'float',
            close_on_exit = true,
            shell = vim.o.shell,
            float_opts = {
                border = 'double', -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
                winblend = 0,
                highlights = {
                    border = 'Normal',
                    background = 'Normal',
                },
            },
            winbar = {
                enabled = true,
                name_formatter = function(term) --  term: Terminal
                    return term.name
                end,
            },
        })

        local Terminal = require('toggleterm.terminal').Terminal

        local lazyterm = Terminal:new({ hidden = true, direction = 'float' , start_in_insert = true})

        vim.keymap.set('n', '<C-t>', function() lazyterm:toggle() end, {desc = "open terminal"})
        vim.keymap.set('t', '<C-t>', function() lazyterm:toggle() end, {desc = "close terminal"})
    end,

}