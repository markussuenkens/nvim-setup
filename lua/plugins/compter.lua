return {
	"RutaTang/compter.nvim",
	config = function()
		require("compter").setup({
			-- Provide and customize templates
			templates = {

			},
			-- Whether fallback to nvim-built-in increase/decrease operation
			fallback = true,
		})
	end,
}
