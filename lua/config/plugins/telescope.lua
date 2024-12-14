-- plugins/telescope.lua:
-- need ripgrep to use live_grep, scoop install ripgrep on windows

return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		vim.api.nvim_set_keymap("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", {noremap = true, silent = true})
		vim.api.nvim_set_keymap("n", "<leader>gg", "<Cmd>Telescope live_grep<CR>", {noremap = true, silent = true})
		vim.api.nvim_set_keymap("n", "<leader>fm", "<Cmd>Telescope marks<CR>", {noremap = true, silent = true})
		vim.api.nvim_set_keymap("n", "<leader>fj", "<Cmd>Telescope jumplist<CR>", {noremap = true, silent = true})
	end
}
