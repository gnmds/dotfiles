vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"   -- default system clipboard
vim.opt.cmdheight = 2               -- more cmd line space
vim.opt.completeopt	= { "menuone", "noselect" }
vim.opt.conceallevel = 0            -- displays text better
vim.opt.fileencoding = "utf-8"
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.pumheight = 10				  -- pop up menu height
vim.opt.showtabline	= 2
vim.opt.smartcase = true
vim.opt.smartindent	= true
vim.opt.showmode = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.timeoutlen = 1000			-- time to wait for a macro to complete in ms
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.writebackup	= false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop	= 4
vim.opt.numberwidth	= 4
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.shortmess:append "c"

vim.cmd [[set iskeyword+=-]]
