return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = false, -- last release is way too old and doesn't work on Windows
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup(
				{
					-- List of parser names
					ensure_installed = {
						'c',
						'lua',
						'luadoc',
						'luap',
						'vim',
						'vimdoc',
						'bash',
						'python',
						'markdown',
						'markdown_inline',
						'jsdoc',
						'json',
						'jsonc',
						'diff',
						'html',
						'javascript',
						'query',
						'regex',
						'toml',
						'tsx',
						'typescript',
						'yaml',
					},

					-- Install parsers synchronously (only applied to 'ensure_installed')
					sync_install = false,

					-- Automatically install missing parsers when entering buffer
					-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
					auto_install = true,

					highlight = {
						enable = true,

						-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
						-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
						-- the name of the parser)
						-- list of language that will be disabled
						disable = {},
					},

					indent = { enable = true },

					-- playground = { enable = true },
				}
			)
		end,
	},

	{ "nvim-treesitter/playground" }
}
