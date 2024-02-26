-- local keymap = vim.keymap

-- keymap.set({'n', 'x'}, 'gy', '"+y')
-- keymap.set({'n', 'x'}, 'gp', '"+p')
-- keymap.set({'n', 'x'}, 'x', '"_x')
-- keymap.set({'n', 'x'}, 'X', '"_d')

local wk = require("which-key")

wk.register({
	-- q = { "<cmd>Ex<cr>", "Explore directory of current file" },
	q = { "<cmd>NvimTreeToggle<cr>", "Toggle NvimTree" },
	a = { "<cmd>keepjumps normal! ggVG<cr>", "Mark all" },
	f = {
		name = "file",
		f = { "<cmd>Telescope find_files<cr>", "Find file" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open recent file" },
		g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
	},
	h = {
		name = "harpoon",
		h = { require("harpoon.ui").toggle_quick_menu, "Toggle quick menu" },
		a = { require("harpoon.mark").add_file, "Add file to quick menu" },
		k = { require("harpoon.ui").nav_prev, "Previous file" },
		j = { require("harpoon.ui").nav_next, "Next file" },
		["1"] = {
			function()
				require("harpoon.ui").nav_file(1)
			end,
			"Open first file in quick menu",
		},
		["2"] = {
			function()
				require("harpoon.ui").nav_file(2)
			end,
			"Open second file in quick menu",
		},
		["3"] = {
			function()
				require("harpoon.ui").nav_file(3)
			end,
			"Open third file in quick menu",
		},
		["4"] = {
			function()
				require("harpoon.ui").nav_file(4)
			end,
			"Open fourth file in quick menu",
		},
	},
	l = {
		name = "lsp",
		l = { vim.lsp.buf.hover, "Hover LSP info" },
		d = { vim.lsp.buf.definition, "Jump to definition" },
		t = { vim.lsp.buf.type_definition, "Jump to type definition" },
		a = { require("actions-preview").code_actions, "View code actions" },
		f = { vim.lsp.buf.format, "Automatic code formatting" },
		r = { vim.lsp.buf.references, "View references" },
	},
}, { prefix = "<leader>" })
