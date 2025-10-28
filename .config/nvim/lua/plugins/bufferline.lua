return {
	"akinsho/bufferline.nvim",
	version = "*",
	requires = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
				--separator_style = "slant" | "slope" | "thick" | "thin"
			},
		})
		vim.keymap.set("n", "<leader>n", ":bn<cr>")
		vim.keymap.set("n", "<leader>p", ":bp<cr>")
		vim.keymap.set("n", "<leader>x", ":bd<cr>")
	end,
}
