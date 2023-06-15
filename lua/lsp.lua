vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local options = {noremap = true, silent = true, buffer = ev.buf}

        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, options)
        vim.keymap.set("n", "<leader>j", vim.diagnostic.goto_next, options)
        vim.keymap.set("n", "<leader>k", vim.diagnostic.goto_prev, options)

        vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, options)
        vim.keymap.set("n", "<leader>t", vim.lsp.buf.type_definition, options)
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, options)
        vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, options)
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, options)
        vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, options)
        vim.keymap.set("n", "<leader>D", vim.lsp.buf.declaration, options)
        vim.keymap.set("n", "<leader>i", vim.lsp.buf.implementation, options)
        vim.keymap.set('n', '<leader>u', vim.lsp.buf.references, bufopts)
    end
})
