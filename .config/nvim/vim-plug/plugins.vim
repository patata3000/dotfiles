call plug#begin('~/.config/nvim/autoload/plugged')
    " Plug 'SirVer/ultisnips' " Track the engine.
    " Plug 'honza/vim-snippets' " Snippets are separated from the engine.
    " Plug 'folke/which-key.nvim'
    Plug 'sheerun/vim-polyglot'
    Plug 'rust-lang-nursery/rustfmt'
    Plug 'rust-lang/rust.vim'
    Plug 'scrooloose/NERDTree' " File Explorer.
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'.
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-dadbod' " Database viewer
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Search.
    Plug 'junegunn/fzf.vim' " Fuzzy Search.
    Plug 'mileszs/ack.vim' " Fuzzy search in files.
    Plug 'qpkorr/vim-bufkill' " Kill buffer without killing window.
    Plug 'tpope/vim-fugitive'
    Plug 'tommcdo/vim-exchange'
    Plug 'diepm/vim-rest-console'
    Plug 'fisadev/vim-isort'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-neorg/neorg'
    Plug 'nvim-telescope/telescope.nvim'

    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'
    Plug 'mangeshrex/everblush.vim'
    Plug 'sainnhe/sonokai'
    Plug 'glepnir/oceanic-material'
    Plug 'sainnhe/everforest'
    Plug 'rhysd/vim-color-spring-night'
    " Airline
    Plug 'vim-airline/vim-airline' " Airline.
    Plug 'vim-airline/vim-airline-themes' " Airline themes.
call plug#end()
