local toArrow = {
    h = "Left",
    j = "Down",
    k = "Up",
    l = "Right",
}

local toLetter = {
    Left  = "h",
    Down  = "j",
    Up    = "k",
    Right = "l",
}

local map = vim.api.nvim_set_keymap

-- leader
map("n", "<Space>", "", {})
vim.g.mapleader = " "

-- lsp
local mappings = {}
do
    mappings.on_attach = function(client, buf)
        local options = {noremap = true, silent = true, buffer = buf}

        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, options)
        vim.keymap.set("n", "<leader>j", vim.diagnostic.goto_next, options)
        vim.keymap.set("n", "<leader>k", vim.diagnostic.goto_prev, options)

        vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, options)
        vim.keymap.set("n", "<leader>t", vim.lsp.buf.type_definition, options)
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, options)
        vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, options)
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.formatting, options)
        vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, options)
        vim.keymap.set("n", "<leader>D", vim.lsp.buf.declaration, options)
        vim.keymap.set("n", "<leader>i", vim.lsp.buf.implementation, options)
        vim.keymap.set('n', '<leader>u', vim.lsp.buf.references, bufopts)
    end
end

-- tabs
do
    local options = {noremap = true, silent = true}
    map("n", "tj",    ":tabnext<CR>", options)
    map("n", "tk",    ":tabprev<CR>", options)
    map("n", "<C-t>", ":tabnew<CR>", options)
end

-- nvim-tree
do 
    map("n", "<C-n>", ":NvimTreeToggle<CR>", {})
    -- map("n", "<leader>r", ":NvimTreeRefresh", {})
    -- map("n", "<leader>n", ":NvimTreeFindFile<CR>", {})
end

return mappings 

