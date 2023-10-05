require("plugins")
require("basics")
require("lsp")
require("mappings")

local lspconfig = require("lspconfig")
lspconfig.rust_analyzer.setup({})
lspconfig.gopls.setup({})
-- lspconfig.elmls.setup({})
-- lspconfig.hls.setup({})

vim.diagnostic.config({
    virtual_text = false,
    signs = false,
    severity_sort = true,
})
