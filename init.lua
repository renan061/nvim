require("plugins")

require("basics")
local mappings = require("mappings")

require("lspconfig").rust_analyzer.setup({
    on_attach = mappings.on_attach,
})

vim.diagnostic.config({
    virtual_text = false,
    signs = false,
    severity_sort = true,
})
