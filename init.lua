require("plugins")
require("basics")
require("lsp")
require("mappings")

-- vim.lsp.enable("solidity_ls_nomicfoundation")
-- vim.lsp.enable("bashls")
-- vim.lsp.enable("ccls")
-- vim.lsp.enable("gopls")
-- vim.lsp.enable("rust_analyzer")
-- vim.lsp.config("hls", {})
-- vim.lsp.config("pyright", {})
-- vim.lsp.config("elmls", {})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                enable = false
            }
        }
    }
})
vim.lsp.enable("lua_ls")

vim.diagnostic.config({
    virtual_text = false,
    signs = false,
    severity_sort = true,
})
