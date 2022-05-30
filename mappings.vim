"" tabs
nnoremap <silent> tj    :tabnext<CR>
nnoremap <silent> tk    :tabprev<CR>
nnoremap <silent> <C-t> :tabnew<CR>

"" coqtail
nnoremap <silent> <C-Up>    :CoqUndo<bar>CoqJumpToEnd<CR>
inoremap <silent> <C-Up>    <Esc>:CoqUndo<bar>CoqJumpToEnd<CR>i
nnoremap <silent> <C-k>     :CoqUndo<bar>CoqJumpToEnd<CR>
inoremap <silent> <C-k>     <Esc>:CoqUndo<bar>CoqJumpToEnd<CR>i

nnoremap <silent> <C-Down>  :CoqNext<bar>CoqJumpToEnd<CR>
inoremap <silent> <C-Down>  <Esc>:CoqNext<bar>CoqJumpToEnd<CR>i
nnoremap <silent> <C-j>     :CoqNext<bar>CoqJumpToEnd<CR>
inoremap <silent> <C-j>     <Esc>:CoqNext<bar>CoqJumpToEnd<CR>i

nnoremap <silent> <C-Right> :CoqToLine<bar>CoqJumpToEnd<CR>
inoremap <silent> <C-Right> <Esc>:CoqToLine<bar>CoqJumpToEnd<CR>i
nnoremap <silent> <C-l>     :CoqToLine<bar>CoqJumpToEnd<CR>
inoremap <silent> <C-l>     <Esc>:CoqToLine<bar>CoqJumpToEnd<CR>i
