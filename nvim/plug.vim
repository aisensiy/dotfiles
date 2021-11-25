if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'preservim/nerdtree'
  Plug 'NLKNguyen/papercolor-theme'

  Plug 'neovim/nvim-lspconfig'
  Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim51' }
  Plug 'folke/lsp-colors.nvim'

  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'

  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
endif

call plug#end()
