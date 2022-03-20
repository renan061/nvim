"" coqtail highlights and syntax
function! CoqtailHighlights() abort
    highlight CoqtailChecked  guibg=DeepSkyBlue4
    highlight CoqtailSent     guibg=DodgerBlue2
endfunction

augroup CoqtailColors
    autocmd!
    autocmd ColorScheme * call CoqtailHighlights()
augroup END

let g:coqtail_nosyntax = 1

"" color scheme
colorscheme dracula

set encoding=utf-8

"" use system clipboard for copy/paste
set clipboard=unnamed
set clipboard=unnamedplus

"" auto-reloading modified files
set autoread

"" no swap file
set noswapfile

"" line numbers
set number

"" show ruler
set ruler
set colorcolumn=80

"" tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
 
"" enable mouse
set mouse=a

"" support all kind of EOLs
set fileformats+=mac

"" search as characters are entered
set incsearch

