call plug#begin('~/.config/nvim/autoload/plugged')
    " Plug 'SirVer/ultisnips' " Track the engine.
    " Plug 'folke/which-key.nvim'
    " Plug 'honza/vim-snippets' " Snippets are separated from the engine.
    " Plug 'jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'.
    " Plug 'lukas-reineke/indent-blankline.nvim' " Indent guide
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'diepm/vim-rest-console'
    Plug 'JoosepAlviste/nvim-ts-context-commentstring'
    Plug 'drybalka/tree-climber.nvim'
    Plug 'fisadev/vim-isort'
    Plug 'ggandor/leap.nvim'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Search.
    Plug 'junegunn/fzf.vim' " Fuzzy Search.
    Plug 'mileszs/ack.vim' " Fuzzy search in files.
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-neorg/neorg'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-context'
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    Plug 'psf/black'
    Plug 'qpkorr/vim-bufkill' " Kill buffer without killing window.
    Plug 'rust-lang-nursery/rustfmt'
    Plug 'rust-lang/rust.vim'
    Plug 'scrooloose/NERDTree' " File Explorer.
    Plug 'sheerun/vim-polyglot'
    Plug 'tommcdo/vim-exchange'
    Plug 'tpope/vim-dadbod' " Database viewer
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'

    " Themes
    Plug 'glepnir/oceanic-material'
    Plug 'joshdick/onedark.vim'
    Plug 'mangeshrex/everblush.vim'
    Plug 'morhetz/gruvbox'
    Plug 'rhysd/vim-color-spring-night'
    Plug 'sainnhe/everforest'
    Plug 'sainnhe/sonokai'
    " Airline
    Plug 'vim-airline/vim-airline' " Airline.
    Plug 'vim-airline/vim-airline-themes' " Airline themes.
call plug#end()
