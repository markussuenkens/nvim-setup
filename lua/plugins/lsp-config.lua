return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					---since 1.0.0
					-- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
					border = "none",

					---since 1.0.0
					-- Width of the window. Accepts:
					-- - Integer greater than 1 for fixed width.
					-- - Float in the range of 0-1 for a percentage of screen width.
					width = 0.8,

					---since 1.0.0
					-- Height of the window. Accepts:
					-- - Integer greater than 1 for fixed height.
					-- - Float in the range of 0-1 for a percentage of screen height.
					height = 0.8,

					keymaps = {
						---since 1.0.0
						-- Keymap to expand a package
						toggle_package_expand = "<CR>",
						---since 1.0.0
						-- Keymap to install the package under the current cursor position
						install_package = "i",
						---since 1.0.0
						-- Keymap to reinstall/update the package under the current cursor position
						update_package = "u",
						---since 1.0.0
						-- Keymap to check for new version for the package under the current cursor position
						check_package_version = "c",
						---since 1.0.0
						-- Keymap to update all installed packages
						update_all_packages = "U",
						---since 1.0.0
						-- Keymap to check which installed packages are outdated
						check_outdated_packages = "C",
						---since 1.0.0
						-- Keymap to uninstall a package
						uninstall_package = "X",
						---since 1.0.0
						-- Keymap to cancel a package installation
						cancel_installation = "<C-c>",
						---since 1.1.0
						-- Keymap to toggle viewing package installation log
						toggle_package_install_log = "<CR>",
					},
				},
			})
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
					"ltex",
					"marksman",
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
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.black,
					null_ls.builtins.formatting.isort,
					-- null_ls.biltins.diagnostics.rubocop,
					-- null_ls.biltins.formatting.rubocop,
					-- null_ls.builtins.diagnostics.eslint,
					-- null_ls.builtins.completion.spell,
				},
			})
		end,
	},
	{
		"aznhe21/actions-preview.nvim",
	},
	{
		"RishabhRD/nvim-lsputils",
		dependencies = {
			"RishabhRD/popfix",
		},
	},
}
