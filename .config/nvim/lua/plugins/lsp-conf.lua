return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "eslint", "clangd", "bashls", "omnisharp" },
				automatic_enable = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("lua_ls", {})
			vim.lsp.config("ts_ls", {})
			vim.lsp.config("eslint", {})
			vim.lsp.config("clangd", {})
			vim.lsp.config("bashls", {})
			vim.lsp.config("omnisharp", {})

			vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gb", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gG", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "gl", vim.diagnostic.open_float, {})
		end,
	},
}
