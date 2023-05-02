require("plugins")
require("basics")
local mappings = require("mappings")

local lspconfig = require("lspconfig")
lspconfig.rust_analyzer.setup({on_attach = mappings.on_attach})
lspconfig.elmls.setup({on_attach = mappings.on_attach})
lspconfig.hls.setup({on_attach = mappings.on_attach})
lspconfig.gopls.setup({on_attach = mappings.on_attach})

vim.diagnostic.config({
    virtual_text = false,
    signs = false,
    severity_sort = true,
})
