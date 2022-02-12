" In ~/.vim/vimrc, or somewhere similar.
let g:ale_linters = {
\   'javascript': ['eslint']
\}


let g:ale_sign_error = '💩'
let g:ale_sign_warning = '😕'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set number
set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey


set nofixendofline
set termguicolors

let ayucolors="mirage"
colorscheme ayu
highlight Normal ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
