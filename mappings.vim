"" coqtail
nnoremap <silent> <C-Up>    :CoqUndo<bar>CoqJumpToEnd<CR>
inoremap <silent> <C-Up>    <Esc>:CoqUndo<bar>CoqJumpToEnd<CR>i

nnoremap <silent> <C-Down>  :CoqNext<bar>CoqJumpToEnd<CR>
inoremap <silent> <C-Down>  <Esc>:CoqNext<bar>CoqJumpToEnd<CR>i

nnoremap <silent> <C-Right> :CoqToLine<bar>CoqJumpToEnd<CR>
inoremap <silent> <C-Right> <Esc>:CoqToLine<bar>CoqJumpToEnd<CR>i

