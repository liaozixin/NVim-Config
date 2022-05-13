vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

--keymap
keymap('n', 'H', '^', opts)
keymap('n', 'L', '$', opts)
keymap('i', 'jj', '<Esc>', opts)
keymap('', '<C-s>', ':wa<CR>', opts)
keymap('', '<F4>', ':wqa<CR>', opts)
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
keymap('n', 'lv', '<cmd>loadview<CR>', opts)

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
keymap('', 'g[', '<Plug>(coc-diagnostic-prev)', {noremap = false, silent = true})
keymap('', 'g]', '<Plug>(coc-diagnostic-next)', {noremap = false, silent = true})
vim.cmd([[
  command! -nargs=0 Format :call CocActionAsync('format')

]])

--markdown-preview
keymap('n', '<C-b>', '<Plug>MarkdownPreview', {noremap = false})

--telescope
vim.cmd([[
  nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
  nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
  nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
  nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]])

--session_manager
vim.cmd([[
  nnoremap <leader>ss <cmd>SessionManager save_current_session<CR>
  nnoremap <leader>ls <cmd>SessionManager load_session<CR>
  nnoremap <leader>ds <cmd>SessionManager delete_session<CR>
]])
