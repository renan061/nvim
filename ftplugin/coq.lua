-- coqtail mappings 
do
    -- TODO
    local toArrow  = {h    = "Left", j    = "Down", k = "Up", l     = "Right"}
    local toLetter = {Left = "h",    Down = "j",    Up = "k", Right = "l"}

    local map = vim.api.nvim_set_keymap
    local options = { noremap = true, silent = true }

    local function wrapcmd(s)
        return ":" .. s .. "<CR>"
    end

    local function map_arrows(lhs, rhs)
        local function wrap(s) return wrapcmd(s .. "<bar>CoqJumpToEnd") end
        rhs = wrap(rhs)
        map("n", "<C-" .. lhs           .. ">", rhs, options)
        map("i", "<C-" .. lhs           .. ">", "<Esc>" .. rhs .. "i", options)
        map("n", "<C-" .. toLetter[lhs] .. ">", rhs, options)
        map("i", "<C-" .. toLetter[lhs] .. ">", "<Esc>" .. rhs .. "i", options)
    end

    map_arrows("Up", "CoqUndo")
    map_arrows("Down", "CoqNext")
    map_arrows("Right", "CoqToLine")

    map("n", "<C-e>", wrapcmd("CoqJumpToError"), options)
    local s = ":CoqStart<CR> | :vert res 84<CR> | <C-w><C-w> | :res 22<CR> | <C-w><C-w><C-w><C-w>";
    map("n", "<C-s>", s, {})

    local function map_query(lhs, rhs)
        lhs = "<C-" .. lhs .. ">"
        rhs = ":execute 'Coq " .. rhs .. "' expand('<cword>') <CR>"
        map("n", lhs, rhs, options)
    end

    map_query("a", "About")
    map_query("h", "Check")
    -- map_query("o", "Locate")
    map_query("p", "Print")
end
