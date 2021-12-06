if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'preservim/nerdtree'
Plug 'NLKNguyen/papercolor-theme'

if has("nvim")

  Plug 'neovim/nvim-lspconfig'
  Plug 'folke/lsp-colors.nvim'

  Plug 'onsails/lspkind-nvim'
  
  Plug 'kosayoda/nvim-lightbulb'

  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/cmp-copilot'
  Plug 'hrsh7th/nvim-cmp'

  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  Plug 'windwp/nvim-autopairs'

  Plug 'github/copilot.vim'
	
  Plug 'ekickx/clipboard-image.nvim'

  Plug 'windwp/nvim-projectconfig'

  Plug 'akinsho/bufferline.nvim'

endif

call plug#end()
