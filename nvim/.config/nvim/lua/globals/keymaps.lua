local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap sapce as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
--[[ keymap("n", "<leader>h", ":noh<cr>", opts) ]]
--[[ keymap("n", "<leader>dw", ":Bdelete!<cr>", opts) ]]
keymap("n", "<leader>dw", ":bd<cr>", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
keymap("n", "<leader>e", ":Explore<cr>", opts)
keymap("n", "J", "mzJ`z", opts)
keymap("n", "Q", "<nop>", opts)
keymap("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", opts)
keymap("n", "<leader>sr", "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", opts)
keymap("n", "<leader>sR", "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", opts)

-- NeoGit
keymap("n", "<leader>ng", "<cmd>lua require(\"neogit\").open()<cr>", opts)
keymap("n", "<leader>np", ":Neogit push<cr>", opts)

-- NeoTest
keymap("n", "<leader>tt", "<cmd>lua require(\"neotest\").run.run()<cr>", opts)
keymap("n", "<leader>tf", "<cmd>lua require(\"neotest\").run.run(vim.fn.expand(\"%\"))<cr>", opts)

-- Diffview
keymap("n", "<leader>df", ":DiffviewOpen<cr>", opts)
keymap("n", "<leader>dc", ":DiffviewClose<cr>", opts)
keymap("n", "<leader>dm", ":DiffviewOpen master<cr>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>p", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Nvimtree
--[[ keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts) ]]
--[[ keymap("n", "<leader>fe", ":NvimTreeFocus<cr>", opts) ]]

-- harpoon
keymap("n", "<leader>`", "<cmd>lua require(\"harpoon.mark\").add_file()<cr>", opts)
keymap("n", "<leader>o", "<cmd>lua require(\"harpoon.ui\").toggle_quick_menu()<cr>", opts)
keymap("n", "<leader>1", "<cmd>lua require(\"harpoon.ui\").nav_file(1)<cr>", opts)
keymap("n", "<leader>2", "<cmd>lua require(\"harpoon.ui\").nav_file(2)<cr>", opts)
keymap("n", "<leader>3", "<cmd>lua require(\"harpoon.ui\").nav_file(3)<cr>", opts)
keymap("n", "<leader>4", "<cmd>lua require(\"harpoon.ui\").nav_file(4)<cr>", opts)

-- quickfix list
keymap("n", "<leader>cc", ":ccl<cr>", opts)
keymap("n", "<leader>co", ":copen<cr>", opts)
keymap("n", "<leader>h", ":cnext<cr>", opts)
keymap("n", "<leader>;", ":cprev<cr>", opts)

-- location list
keymap("n", "<leader>k", ":lnext<cr>", opts)
keymap("n", "<leader>j", ":lprev<cr>", opts)

-- Insert --
-- press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "p", '"_dP', opts)
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
