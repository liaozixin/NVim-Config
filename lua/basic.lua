-- utf8
vim.g.encoding = "UTF-8"

vim.g.fdm = marker
vim.cmd([[
    au BufWinLeave * silent mkview

    set path+=**
    set wildmenu
    
]])

vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.mouse = "a"

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.hidden = true
