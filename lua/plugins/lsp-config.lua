return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"pylsp",
					-- "asm_lsp",
					-- "julials",
					"ltex",
					"marksman",
					"r_language_server",
					-- "rust_analyzer",
					-- "sqls",
					"taplo",
				},
				automatic_installation = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.ltex.setup({})
			lspconfig.pylsp.setup({})
		end,
	},
}
