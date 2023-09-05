return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
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

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'tpope/vim-sleuth'
    use 'folke/which-key.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'numToStr/Comment.nvim'

    use 'RRethy/vim-illuminate'
    use 'windwp/nvim-autopairs'
    use 'sbdchd/neoformat'
    use 'preservim/nerdtree'
    use 'karb94/neoscroll.nvim'

    use "rebelot/kanagawa.nvim"
end)
