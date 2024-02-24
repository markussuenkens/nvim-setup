return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	version = false, 
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {}
	end,
}
