local module = {}

function module.setup()
	require("lazy").setup({
		{ import = "plugins.theme" },
		{ import = "plugins.telescope" },
		{ import = "plugins.treesitter" },
		{ import = "plugins.neotree" },
		{ import = "plugins.lualine" },
		{ import = "plugins.lsp-conf" },
		{ import = "plugins.none-ls" },
		{ import = "plugins.comp" },
		{ import = "plugins.navigator" },
		{ import = "plugins.bufferline" },
		{ import = "plugins.dap" },
		{ import = "plugins.lazydev" },
	})
end

return module
