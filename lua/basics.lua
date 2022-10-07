-- coqtail highlights (needs to be set before the colorscheme)
vim.cmd([[
    function! CoqtailHighlights() abort
        highlight CoqtailChecked  guibg=DeepSkyBlue4
        highlight CoqtailSent     guibg=DodgerBlue2
    endfunction

    augroup CoqtailColors
        autocmd!
        autocmd ColorScheme * call CoqtailHighlights()
    augroup END
]])

vim.cmd("colorscheme dracula")

vim.opt.mouse = "a"
vim.opt.encoding = "utf-8"
vim.opt.autoread = true -- auto-reloading modified files
vim.opt.swapfile = false -- no swap file
vim.opt.number = true -- show line numbers
vim.opt.fileformats:append({"mac"}) -- support all kinds of EOLs
vim.opt.incsearch = true -- search as characters are entered

-- use system clipboard for copy/paste
vim.opt.clipboard = "unnamedplus"

-- show ruler
vim.opt.ruler = true 
vim.opt.colorcolumn = "80"

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- auto format on save
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]])

-- coqtail
-- vim.g.coqtail_nosyntax = 1
-- vim.g.coqtail_noindent = 1
vim.g.coqtail_noindent_comment = 1
vim.g.coqtail_nomap = 1
