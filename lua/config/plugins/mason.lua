return {
	"williamboman/mason-lspconfig.nvim",
	lazy = false,
	dependencies = {
		{ "williamboman/mason.nvim" },
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗"
				}
			}
		})
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "clangd", "cmake", "pyright"},
			automatic_installation = true,
		})
	end
}
