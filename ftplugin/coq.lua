-- coqtail mappings 
do
    -- TODO
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
    local options = { noremap = true, silent = true }

    local function map_(lhs, rhs)
        local function wrap(s) return ":" .. s .. "<bar>CoqJumpToEnd<CR>" end
        rhs = wrap(rhs)
        map("n", "<C-" .. lhs           .. ">",            rhs,        options)
        map("i", "<C-" .. lhs           .. ">", "<Esc>" .. rhs .. "i", options)
        map("n", "<C-" .. toLetter[lhs] .. ">",            rhs,        options)
        map("i", "<C-" .. toLetter[lhs] .. ">", "<Esc>" .. rhs .. "i", options)
    end

    map_("Up", "CoqUndo")
    map_("Down", "CoqNext")
    map_("Right", "CoqToLine")
end
