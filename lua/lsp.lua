vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local options = {noremap = true, silent = true, buffer = ev.buf}

        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, options)
        vim.keymap.set("n", "<leader>j", function() vim.diagnostic.jump({ count =  1 }) end, options)
        vim.keymap.set("n", "<leader>k", function() vim.diagnostic.jump({ count = -1 }) end, options)

        vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, options)
        vim.keymap.set("n", "<leader>t", vim.lsp.buf.type_definition, options)
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, options)
        vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, options)
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, options)
        vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, options)
        vim.keymap.set("n", "<leader>D", vim.lsp.buf.declaration, options)
        vim.keymap.set("n", "<leader>i", vim.lsp.buf.implementation, options)
        vim.keymap.set('n', '<leader>u', vim.lsp.buf.references, options)
    end
})

vim.api.nvim_create_user_command("LspRestart", function()
  local clients = vim.lsp.get_clients()
  vim.lsp.stop_client(clients, true)
  vim.defer_fn(function() vim.cmd("edit") end, 100)
end, {})
