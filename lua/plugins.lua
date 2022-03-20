
return require("packer").startup(function()
    -- packer manages itself
    use "wbthomason/packer.nvim"

    -- dracula color scheme
    use "Mofiqul/dracula.nvim"

    -- nvim-tree
    use {
        "kyazdani42/nvim-tree.lua",
        requires = { "kyazdani42/nvim-web-devicons" },
        config = function() require("nvim-tree").setup({}) end
    }

    -- coqtail
    use "whonore/Coqtail"

    -- ale (linter)
    use "dense-analysis/ale"
end)

