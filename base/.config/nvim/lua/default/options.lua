local options = {

  number = true,
  relativenumber = true,
  backup = false,
  clipboard = "unnamedplus",    -- default system clipboard
  cmdheight = 2,                -- more cmd line space
  completeopt	= { "menuone", "noselect" },
  conceallevel = 0,             -- displays text better
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,               -- pop up menu height
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  showmode = false,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  timeoutlen = 1000,            -- time to wait for a macro to complete in ms
  undofile = true,
  updatetime = 300,
  writebackup	= false,
  expandtab = true,
  shiftwidth = 2,
  tabstop	= 4,
  numberwidth	= 4,
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8

}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd [[set iskeyword+=-]]
