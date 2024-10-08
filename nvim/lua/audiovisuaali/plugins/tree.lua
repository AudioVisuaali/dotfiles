return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 0
		vim.g.loaded_netrwPlugin = 0
		vim.g.nvim_tree_auto_open = 0

		-- change color for arrows in tree to light blue
		vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
		vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])

		-- configure nvim-tree
		nvimtree.setup({
			view = {
				side = "left",
				width = 52,
				relativenumber = false,
			},
			update_focused_file = {
				enable = true,
				update_cwd = true,
			},
			-- change folder arrow icons
			renderer = {
				highlight_git = true,
				indent_markers = {
					enable = false,
				},
				icons = {
					show = {
						git = false,
					},
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					quit_on_open = false,
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				dotfiles = false,
				git_clean = false,
				no_buffer = false,
				custom = { "node_modules", ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		keymap.set(
			"n",
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "Toggle file explorer on current file" }
		) -- toggle file explorer on current file
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR> ", { desc = "Refresh file explorer" }) -- refresh file explorer
	end,
}
