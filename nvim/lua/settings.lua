HOME = os.getenv("HOME")

vim.g.mapleader = ' '

vim.o.shortmess = "at"
vim.o.cmdheight = 2
vim.o.syntax = "on" 
vim.o.mouse = "a"
vim.o.ruler = true
vim.o.cursorline = true
vim.o.clipboard = "unnamedplus"
vim.o.completeopt = "menuone,noselect"
vim.o.guicursor = ''
vim.o.tabstop = 4 
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.hlsearch = false
vim.o.smartindent = true
vim.o.relativenumber = true
vim.o.nu = true
vim.o.hidden = true 
vim.o.ignorecase = true
vim.o.wrap = false
vim.o.smartcase = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = HOME .. "/.vim/undodir"
vim.o.undofile = true 
vim.o.incsearch = true
vim.o.termguicolors = true
vim.o.scrolloff = 20
vim.o.sidescrolloff = 20
vim.o.signcolumn = "yes"
vim.o.colorcolumn = "80"
vim.o.splitbelow = true
vim.o.spell = true

