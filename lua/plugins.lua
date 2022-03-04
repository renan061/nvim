
return require('packer').startup(function()
    -- packer manages itself
    use 'wbthomason/packer.nvim'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function() require('_nvim-tree').setup({}) end
    }
end)
