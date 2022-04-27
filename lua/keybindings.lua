vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

--keymap
keymap('n', 'H', '^', opts)
keymap('n', 'L', '$', opts)
keymap('i', 'jj', '<Esc>', opts)
keymap('', '<C-s>', ':wa<CR>', opts)
keymap('', '<F4>', ':wq<CR>', opts)
keymap('', '<M-h>', '<C-w>h', opts)
keymap('', '<M-l>', '<C-w>l', opts)
keymap('', '<M-j>', '<C-w>j', opts)
keymap('', '<M-k>', '<C-w>k', opts)
keymap('i', '(', '()<ESC>i', {noremap = true})
keymap('i', '[', '[]<ESC>i', {noremap = true})
keymap('i', "'", "''<ESC>i", {noremap = true})
keymap('i', '"', '""<ESC>i', {noremap = true})
keymap('i', '{', '{}<ESC>i', {noremap = true})
keymap('n', 't', '<cmd>terminal<CR>', opts)

--nvimtree
keymap('', '<C-n>', ':NvimTreeToggle<CR>', opts)

--bufferline
keymap('', '<M-Left>', ':BufferLineCyclePrev<CR>', opts)
keymap('', '<M-Right>', ':BufferLineCycleNext<CR>', opts)
keymap('', '<M-Up>', '[]', opts)
keymap('', '<M-Down>', '][', opts)

--coc-vim
keymap('n', 'gd', '<Plug>(coc-definition)', {noremap = false, silent = true})
keymap('n', 'gi', '<Plug>(coc-implementation)', {noremap = false, silent = true})
keymap('n', 'gr', '<Plug>(coc-references)', {noremap = false, silent = true})
keymap('n', 'rn', '<Plug>(coc-rename)', {noremap = false, silent = true})
keymap('n', '<C-j>', '<Plug>(coc-diagnostic-next)', {noremap = false, silent = true})
keymap('n', '<C-k>', '<Plug>(coc-diagnostic-prev)', {noremap = false, silent = true})

--markdown-preview
keymap('n', '<C-b>', '<Plug>MarkdownPreview', {noremap = false})
