let g:vim_isort_map = '<C-i>'
let g:vim_isort_config_overrides = {
      \ 'include_trailing_comma': 1,
      \ 'multi_line_output': 3
      \}

noremap <leader>i :Isort<CR>
