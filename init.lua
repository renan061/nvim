require("plugins")
require("basics")
require("lsp")
require("mappings")

local lspconfig = require("lspconfig")
lspconfig.bashls.setup({})
lspconfig.ccls.setup({})
lspconfig.gopls.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                enable = false
            }
        }
    }
})
-- lspconfig.hls.setup({})
-- lspconfig.pyright.setup({})
-- lspconfig.elmls.setup({})

vim.diagnostic.config({
    virtual_text = false,
    signs = false,
    severity_sort = true,
})
