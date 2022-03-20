
syntax enable
filetype plugin indent on

"" always show the gutter
" set signcolumn=yes

let g:ale_linters = {
\   'rust' : ['rls'],
\}

let g:ale_fixers = {
\   'rust' : ['rustfmt'],
\}

let g:ale_fix_on_save = 1

