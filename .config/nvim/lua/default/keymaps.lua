local opts = {
    noremap = true,
    silent = true
}

local cmd = vim.cmd

-- shorten api name
local keymap = vim.api.nvim_set_keymap

-- make space the leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- modes

-- normal --

-- window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- open file explorer
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- resize with keys
keymap('n', '<C-Up>', ':resize +2<CR>', opts)
keymap('n', '<C-Down>', ':resize -2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- navigate buffers
keymap('n', '<S-l>', ':BufferLineCycleNext<CR>', opts)
keymap('n', '<S-h>', ':BufferLineCyclePrev<CR>', opts)

-- close buffers
keymap('n', 'c[', ':BufferLineCloseLeft<CR>', opts)
keymap('n', 'c]', ':BufferLineCloseRight<CR>', opts)

-- dont enter insert mode after newline
keymap('n', 'o', 'o<ESC>', opts)
keymap('n', '<S-o>', '<S-o><ESC>', opts)

-- visual --

-- stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- move text up and down
keymap('v', '<A-j>', ':m .+1<CR>==', opts)
keymap('v', '<A-k>', ':m .-2<CR>==', opts)
keymap('v', 'p', "'_dP", opts)

-- visual block --

-- move text up and down
keymap('x', 'J', ":move '>+1<CR>gv-gv", opts)
keymap('x', 'K', ":move '<-2<CR>gv-gv", opts)
keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

-- fix typos
cmd('command Q q')
cmd('command W w')
cmd('command WQ wq')

-- telescope

keymap('n', '<leader>f', '<cmd>Telescope find_files<CR>', opts)
keymap('n', '<C-t>', '<cmd>Telescope live_grep<CR>', opts)
