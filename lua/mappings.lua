local map = vim.api.nvim_set_keymap

-- leader
map("n", "<Space>", "", {})
vim.g.mapleader = " "

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
