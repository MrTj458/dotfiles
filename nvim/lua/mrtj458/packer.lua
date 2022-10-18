vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {"catppuccin/nvim", as = "catppuccin"}
    use 'nvim-tree/nvim-tree.lua'
    use 'sbdchd/neoformat'
    use 'windwp/nvim-autopairs'
    use 'nvim-lua/plenary.nvim'
    use {'nvim-telescope/telescope.nvim', tag = '0.1.0'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'neovim/nvim-lspconfig'
    use 'TimUntersberger/neogit'
    use 'numToStr/Comment.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'tpope/vim-sleuth'
    use 'lewis6991/gitsigns.nvim'
    use 'RRethy/vim-illuminate'

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-path'
    use 'L3MON4D3/LuaSnip' 
    use 'saadparwaiz1/cmp_luasnip'
end)
