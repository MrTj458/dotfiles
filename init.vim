call plug#begin()

Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'neovim/nvim-lspconfig'
Plug 'TimUntersberger/neogit'
Plug 'numToStr/Comment.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tpope/vim-sleuth'
Plug 'lewis6991/gitsigns.nvim'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()

let mapleader = " "

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
" :set nohlsearch
:set noerrorbells
:set scrolloff=8
:set signcolumn=yes
:set incsearch
:set colorcolumn=80
:set cmdheight=1
:set noshowmode
:set noshowcmd

" Colors
colorscheme gruvbox

" Git
nnoremap <leader>gi <cmd>Neogit<cr>

" NerdTree
nnoremap <leader>t <cmd>NERDTreeToggle<cr>
let NERDTreeShowHidden=1

" Emmet
let g:user_emmet_leader_key='<C-L>'

" Formatting
let g:neoformat_try_node_exe = 1
nnoremap <leader>fa <cmd>Neoformat<cr>
nnoremap <leader>fd <cmd>lua vim.lsp.buf.code_action()<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Neovim lua config
lua require('init')
