return {
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
}
