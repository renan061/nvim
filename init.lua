require("plugins")
require("basics")
require("lsp")
require("mappings")

vim.lsp.enable("gopls")
vim.lsp.enable("clangd")

vim.diagnostic.config({
    virtual_text = false,
    signs = false,
    severity_sort = true,
})
