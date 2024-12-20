vim.g.mapleader = " "

vim.keymap.set("n", "<leader>sr", ":%s///g<Left><Left><Left>")
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Back to file tree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Reload this file
vim.keymap.set("n", "<leader>sv", ":source $MYVIMRC<CR>")

-- Window management
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l<CR><leader>ff<CR>")

-- Replace
vim.keymap.set("n", "<leader>rp", ":%s///gc<Left><Left><Left><Left>")

-- Move between windows
vim.keymap.set("n", "<Tab>", "<C-w>w")
vim.keymap.set("n", "<S-Tab>", "<C-w>W")

-- Allow to move lines with K and J
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>yw", '"+yiw')

vim.keymap.set("n", "<leader>ql", "<cmd>cclose<CR>", { desc = "Close quickfix" })
vim.keymap.set("n", "<leader>qf", "<cmd>copen<CR>", { desc = "Open quickfix" })
vim.keymap.set("n", "<c-n>", "<cmd>cnext<CR>zz", { noremap = true, silent = true, desc = "Next location" })
vim.keymap.set("n", "<c-p>", "<cmd>cprev<CR>zz", { noremap = true, silent = true, desc = "Previous location" })

vim.api.nvim_set_keymap("n", "<C-d>", "10jzz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-u>", "10kzz", { noremap = true })

-- Toggle numbers
vim.keymap.set("n", "<leader>ln", ":set relativenumber! nu!<CR>", { noremap = true, silent = true })

-- Disable basic navigation
vim.api.nvim_set_keymap("n", "<Up>", "<NOP>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", "<NOP>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Left>", "<NOP>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Right>", "<NOP>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>e", ":Explore<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "§", ":Gdiff<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>.", "<cmd>CodeActionMenu<cr>", { noremap = true, silent = true })
vim.g.code_action_menu_show_details = false
vim.g.code_action_menu_show_diff = false
vim.g.code_action_menu_show_action_kind = false

vim.api.nvim_set_keymap("n", "<M-h>", ":TmuxResizeLeft<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-j>", ":TmuxResizeDown<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-k>", ":TmuxResizeUp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-l>", ":TmuxResizeRight<CR>", { noremap = true, silent = true })
