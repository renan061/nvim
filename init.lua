require("plugins")
require("basics")
require("lsp")
require("mappings")

local lspconfig = require("lspconfig")
lspconfig.rust_analyzer.setup({})
lspconfig.gopls.setup({})
lspconfig.hls.setup({})
lspconfig.pyright.setup({})
-- lspconfig.elmls.setup({})

vim.diagnostic.config({
    virtual_text = false,
    signs = false,
    severity_sort = true,
})
