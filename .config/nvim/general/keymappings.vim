nnoremap <Space> <Nop>
" set leader key
let g:mapleader = "\<Space>"

" Langmap for workman
" set langmap=YH,NJ,EK,OL,HY,JN,KE,LO

noremap e k
noremap k e
noremap E K
noremap K E

noremap n j
noremap j n
noremap N J
noremap J N

noremap o l
noremap l o
noremap O L
noremap L O

noremap y h
noremap h y
noremap Y H
noremap H y$

noremap gN gJ

" Line management
noremap <A-s> i"<CR>"<esc>k$
noremap <A-e> i<CR><esc>k$
noremap E mxo<esc>`x

" Escape sequence
inoremap fw <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Screen management
noremap <C-n> <C-e>
noremap <C-e> <C-y>

" Window management
noremap <leader>w- :split<cr>
noremap <leader>w/ :vsplit<CR>
noremap <leader>wy <C-w>h
noremap <leader>wo <C-w>l
noremap <leader>wn <C-w>j
noremap <leader>we <C-w>k
noremap <leader>wt <C-w>T
noremap <leader>wl <C-w>o
map <C-w>h <Nop>
map <C-w>l <Nop>
map <C-w>j <Nop>
map <C-w>k <Nop>

" noremap <leader>wr <C-W>r
" noremap <leader>wR <C-W>R
noremap <leader>wr <C-W>x
" noremap <leader>wY <C-W>W

nnoremap <leader>wd :q<CR>
nnoremap <leader>w= <C-w>=

" Buffer management
noremap <A-S-e> :bprev<CR>
noremap <A-S-n> :bnext<CR>
noremap <leader>bd :BD<CR>

" Tab management
noremap <leader>tn :tabnew<CR>
noremap <leader>td :tabclose<CR>
noremap <A-y> :tabprevious<CR>
noremap <A-o> :tabnext<CR>
noremap <leader>ty :-tabmove<CR>
noremap <leader>to :+tabmove<CR>
noremap <leader>dt :vsplit<CR><C-w>Tgd
noremap <leader>ds :vsplit<CR>gd

" noremap <C-n> <C-j>
" noremap <C-p> <C-e>

" Split string
noremap <leader>Ss i""<Esc>
" You can't stop me
cmap w!! w !sudo tee %
