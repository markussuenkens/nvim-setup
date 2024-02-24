local keymap = vim.keymap

-- keymap.set({'n', 'x'}, 'gy', '"+y')
-- keymap.set({'n', 'x'}, 'gp', '"+p')
-- keymap.set({'n', 'x'}, 'x', '"_x')
-- keymap.set({'n', 'x'}, 'X', '"_d')
-- keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
-- keymap.set('n', '<leader>q', vim.cmd.Ex)

local wk = require("which-key")

wk.register({
	q = { "<cmd>Ex<cr>", "Explore Directory Of Current File" },
	a = { "<cmd>keepjumps normal! ggVG<cr>", "Mark All" },
	f = {
		name = "file",
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
	},
	h = {
		name = "harpoon",
		h = { require("harpoon.ui").toggle_quick_menu, "Toggle Quick Menu" },
		a = { require("harpoon.mark").add_file, "Add File To Quick Menu" },
		k = { require("harpoon.ui").nav_prev, "Previous File"},
		j = { require("harpoon.ui").nav_next, "Next File"},
		["1"] = { function() require("harpoon.ui").nav_file(1) end, "Open First File in Quick Menu"},
		["2"] = { function() require("harpoon.ui").nav_file(2) end, "Open Second File in Quick Menu"},
		["3"] = { function() require("harpoon.ui").nav_file(3) end, "Open Third File in Quick Menu"},
		["4"] = { function() require("harpoon.ui").nav_file(4) end, "Open Fourth File in Quick Menu"},
	}
}, { prefix = "<leader>" })
