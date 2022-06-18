local opt = vim.opt

local options = {
    autoindent = true,
    autoread = true, -- read files again if changed outside of nvim
    autowrite = false, -- write file on modification
    autowriteall = false, -- same as above but for more commands
    backup = false, -- dont make a backup file
    belloff = 'all',
    breakat = ' ^!@*-+;:,./?',
    browsedir = 'buffer', -- use the directory of the current buffer in the file browser
    cedit = '<C-F>', -- opens command-line window when in command mode
    clipboard = 'unnamedplus',
    cmdheight = 2,
    cmdwinheight = 5,
    completeopt = 'menu,menuone,noselect',
    confirm = true, -- confirm save of unsaved file changes
    expandtab = true, -- replace tab with spaces
    fileencoding = 'UTF-8',
    fileignorecase = true,
    history = 5000,
    hlsearch = false, -- search matches are not highlighted after exiting search
    incsearch = true, -- highlight matches during search
    ignorecase = true,
    insertmode = false,
    joinspaces = false,
    mouse = 'a',
    number = true,
    numberwidth = 4,
    relativenumber = true,
    scrolloff = 8, -- number of lines that are visible above and below the cursor
    shiftwidth = 4,
    showmode = false, -- handled by plugin
    showtabline = 2,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    termguicolors = true,
    timeoutlen = 1000,
    undofile = true,
    updatetime = 300,
    wildmenu = true,
    wrap = false
}

opt.shortmess:append 'c'
opt.iskeyword:append '-'

for k, v in pairs(options) do
    opt[k] = v
end

require 'default.keymaps'
require 'default.plugins'
require 'default.colorscheme'
require 'default.cmp'
require 'default.lualine'
require 'default.lsp'
require 'default.telescope'
require 'default.treesitter'
require 'default.autopairs'
require 'default.gitsigns'
require 'default.nvim-tree'
require 'default.bufferline'
require 'default.comments'
