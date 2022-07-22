call plug#begin()

Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'sbdchd/neoformat'
Plug 'jiangmiao/auto-pairs'

" LSP
Plug 'neovim/nvim-lspconfig'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

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
:set nohlsearch
:set noerrorbells
:set scrolloff=8
:set signcolumn=yes
:set incsearch
:set colorcolumn=80

colorscheme gruvbox

" NerdTree
nnoremap <leader>t <cmd>NERDTreeToggle<cr>

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
