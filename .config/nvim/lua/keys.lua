--[[ keys.lua ]]
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<S-Up>", ":resize +2<CR>", opts)
keymap("n", "<S-Down>", ":resize -2<CR>", opts)
keymap("n", "<S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<S-Right>", ":vertical resize +2<CR>", opts)

-- Close buffer without closing window
keymap('n', '<Leader>q', [[:bp<bar>sp<bar>bn<bar>bd<CR>]], opts)

-- Toggle nvim-tree
keymap('n', '<Leader>n', [[:NvimTreeToggle<CR>]], opts)
-- Toggle more plugins
keymap('n', '<Leader>u', [[:UndotreeToggle<CR>]], opts)
keymap('n', '<Leader>l', [[:IndentLinesToggle<CR>]], opts)
keymap('n', '<Leader>t', [[:TagbarToggle<CR>]], opts)
keymap('n', '<Leader>ff', [[:Telescope find_files<CR>]], opts)
keymap('n', '<Leader>fg', [[:Telescope live_grep<CR>]], opts)
keymap('n', '<Leader>fb', [[:Telescope buffers<CR>]], opts)
keymap('n', '<Leader>fh', [[:Telescope help_tags<CR>]], opts)

-- LSP
local function nkeymap(key, map)
    keymap('n', key, map, opts)
end
nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gW', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gy', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-s>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
-- See diagnostic messages in a floating window
nkeymap('<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>')
nkeymap('<leader>d[', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
nkeymap('<leader>d]', '<cmd>lua vim.diagnostic.goto_next()<CR>')
-- The following command requires plug-ins "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", and optionally "kyazdani42/nvim-web-devicons" for icon support
nkeymap('<leader>dd', '<cmd>Telescope diagnostics<CR>')
-- -- If you don't want to use the telescope plug-in but still want to see all the errors/warnings, comment out the telescope line and uncomment this:
-- -- nkeymap('<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>')
