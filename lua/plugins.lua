local packer = require("packer").startup(function()
    use "wbthomason/packer.nvim" -- packer manages itself

    use "neovim/nvim-lspconfig" 

    use "Mofiqul/dracula.nvim"

    use { -- nvim-tree
        "nvim-tree/nvim-tree.lua",
        requires = { "nvim-tree/nvim-web-devicons" },
    }

    use "whonore/Coqtail"
end)

require("nvim-tree").setup({})

return packer

