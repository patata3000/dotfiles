let NERDTreeIgnore=['__pycache__']
" Highlight currently open buffer in NERDTree

" NERDTree
" nmap <C-n> :NERDTreeToggle<CR><C-w>=
" autocmd BufEnter * silent! if bufname('%') !~# 'NERD_tree_' | call SyncTree()
"autocmd BufEnter * silent! if bufname('%') !~# 'NERD_tree_' | cd %:p:h | NERDTreeCWD | wincmd p | endif

" Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

function! CheckIfCurrentBufferIsFile()
  return strlen(expand('%')) > 0
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && CheckIfCurrentBufferIsFile() && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
" autocmd BufRead * call SyncTree()

function! ToggleNerdTree()
  set eventignore=BufEnter
  NERDTreeToggle
  set eventignore=
endfunction


noremap <leader>tt :call ToggleNerdTree()<CR><C-w>=
nnoremap <leader>ts :call SyncTree()<CR>
nnoremap <leader>tf :call SyncTree()<CR>:NERDTreeFocus<CR>
nnoremap <leader>tF :NERDTreeFocus<CR>
" nnoremp <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeMapActivateNode='o'
let NERDTreeMapCustomOpen='<TAB>'
let NERDTreeMenuUp='e'
let NERDTreeMenuDown='n'
let NERDTreeMapOpenExpl='k'
let NERDTreeMinimalUI=1
