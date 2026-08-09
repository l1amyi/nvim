-- plugins/diffview.lua:
-- <leader>dv :DiffviewOpen  一键展示所有文件改动
-- <leader>dq :DiffviewClose 关闭

return {
	"sindrets/diffview.nvim",
	config = function()
		vim.api.nvim_set_keymap("n", "<leader>dv", "<Cmd>DiffviewOpen<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>dq", "<Cmd>DiffviewClose<CR>", { noremap = true, silent = true })
	end,
}
