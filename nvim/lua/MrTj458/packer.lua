return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use "rebelot/kanagawa.nvim"
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
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
    use 'windwp/nvim-autopairs'
    use 'sbdchd/neoformat'
    use 'numToStr/Comment.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'karb94/neoscroll.nvim'
    use 'RRethy/vim-illuminate'
    use 'tpope/vim-sleuth'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'preservim/nerdtree'
end)
