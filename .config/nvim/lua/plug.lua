-- [[ plug.lua ]]

return require('packer').startup(function()
    -- [[ Plugins Go Here ]]
    -- File Management
    use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
    }

    -- Theme
    use { 'mhinz/vim-startify' }                       -- start screen
    use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
    use {
        'nvim-lualine/lualine.nvim',                     -- statusline
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'Mofiqul/dracula.nvim' }                     -- colorscheme
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Dev
    use {
        'nvim-telescope/telescope.nvim',                 -- fuzzy finder
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'majutsushi/tagbar' }                        -- code structure
    use { 'Yggdroot/indentLine' }                      -- see indentation
    use { 'tpope/vim-fugitive' }                       -- git integration
    use { 'junegunn/gv.vim' }                          -- commit history
    use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
    use { 'mbbill/undotree'}                            -- persistent undo

    -- Parsing & LSP
    use { 'nvim-treesitter/nvim-treesitter' }
    use { 'neovim/nvim-lspconfig' }
    use { 'williamboman/nvim-lsp-installer' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'hrsh7th/vim-vsnip-integ' }

end)
