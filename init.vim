lua require('basic')
lua require('keybindings')

call plug#begin('~\AppData\Local\nvim\plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'akinsho/bufferline.nvim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim' 
  Plug 'Shatur/neovim-session-manager'
call plug#end()

syntax on
colorscheme challenger_deep

if has('nvim') || has('termguicolors')
  set termguicolors
endif

lua require('plugin-config\\nvim-tree')
lua require('plugin-config\\nvim-treesitter')
lua require('plugin-config\\bufferline')
lua require('plugin-config\\coc-vim')
lua require('plugin-config\\markdown-preview')
