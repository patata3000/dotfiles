" set leader key
" let g:mapleader = "\<Space>" " Duplicate keys/mappings.vim

" Python support
let g:python3_host_prog = "~/.local/share/pyenv/versions/py3nvim/bin/python"

syntax enable                           " Enables syntax highlighing
" Undo will still work after closing neovim
" set formatoptions-=cro                  " Stop newline continution of comments
" set autochdir                           " Your working directory will always be the same as your working directory
set autoindent                          " Good auto indent
set clipboard=unnamedplus               " Copy paste between vim and everything else
set cmdheight=4                         " More space for displaying messages
set colorcolumn=89                      " Set max width
set conceallevel=0                      " So that I can see `` in markdown files
set cursorline                          " Enable highlighting of the current line
set encoding=utf-8                      " The encoding displayed
set expandtab                           " Converts tabs to spaces
set fileencoding=utf8                   " The encoding written to file
set foldmethod=indent                   " Define folding rule
set hidden                              " Required to keep multiple buffers open multiple buffers
set ignorecase
set iskeyword+=-                      	" treat dash separated words as a word text object"
set laststatus=2                        " Always display the status line
set mouse=a                             " Enable your mouse
set nobackup                            " This is recommended by coc
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set notimeout
set nowrap                              " Display long lines as just one line
set nowritebackup                       " This is recommended by coc
set number                              " Line numbers
set pumheight=10                        " Makes popup menu smaller
set ruler              			            " Show the cursor position all the time
set scrolloff=5                         " Scroll offset
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set showtabline=2                       " Always show tabs
set smartcase
set smartindent                         " Makes indenting smart
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set tabstop=2                           " Insert 2 spaces for a tab
set ttimeout
set undofile
set updatetime=300                      " Faster completion

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:.

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %


