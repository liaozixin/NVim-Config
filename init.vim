lua require('basic')
lua require('keybindings')

call plug#begin('~/.config/nvim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
    Plug 'kyazdani42/nvim-web-devicons' " for file icons
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'akinsho/bufferline.nvim'
call plug#end()

syntax on
colorscheme challenger_deep

if has('nvim') || has('termguicolors')
  set termguicolors
endif

lua require('plugin-config/nvim-tree')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/bufferline')
lua require('plugin-config/coc-vim')

