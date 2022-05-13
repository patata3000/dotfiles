call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    Plug 'rust-lang-nursery/rustfmt'
    Plug 'rust-lang/rust.vim'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Vim surround
    Plug 'tpope/vim-surround'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do':'yarn install --frozen-lockfile'}

    " Themes
    Plug 'joshdick/onedark.vim'
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Database viewer
    Plug 'tpope/vim-dadbod'
    
    " Fuzzy Search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Fuzzy search in files
    Plug 'mileszs/ack.vim'

    Plug 'neomake/neomake'
    Plug 'psf/black', { 'branch': 'stable' }
    " Kill buffer without killing window
    Plug 'qpkorr/vim-bufkill'
    Plug 'tpope/vim-fugitive'
    Plug 'tommcdo/vim-exchange'
"    Plug 'folke/which-key.nvim'
    Plug 'diepm/vim-rest-console'
    Plug 'fisadev/vim-isort'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-neorg/neorg' | Plug 'nvim-lua/plenary.nvim'
call plug#end()
