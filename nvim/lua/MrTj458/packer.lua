return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.x',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                run = 'make',
                config = function()
                    require('telescope').load_extension('fzf')
                end
            },
        }
    }

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    -- Git
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'lewis6991/gitsigns.nvim'

    -- Auto tab width
    use 'tpope/vim-sleuth'

    -- Show function signature when typing
    use 'ray-x/lsp_signature.nvim'

    -- Keybind hints
    use 'folke/which-key.nvim'

    -- Indent guides
    use 'lukas-reineke/indent-blankline.nvim'

    -- Comment blocks
    use 'numToStr/Comment.nvim'

    -- Highlight word on hover
    use 'RRethy/vim-illuminate'

    -- Match brackets
    use 'windwp/nvim-autopairs'

    -- Smooth scroll
    use 'karb94/neoscroll.nvim'

    -- Formatting
    use 'sbdchd/neoformat'

    -- Colors and layout
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'preservim/nerdtree'
    use 'nvim-lualine/lualine.nvim'
    use "sainnhe/gruvbox-material"
end)
