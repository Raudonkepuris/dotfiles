return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
	branch = 'main',
	build = ':TSUpdate',
	config = function()
		vim.opt.foldtext = ""
	  vim.opt.foldcolumn = "0"
	  vim.opt.foldlevelstart = 99
	  vim.opt.foldmethod = "expr"
	  vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
	
	  require("nvim-treesitter").install({
			"typescript",
	    "tsx",
	    "jsx",
	    "javascript",
	    "json",
	    "jsonc",
	    "yaml",
	    "lua",
	    "bash",
	    "css",
	    "sql",
	    "scss",
	    "html",
	  })
	end
}
