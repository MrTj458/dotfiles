local nnoremap = require("mrtj458.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

nnoremap("<leader>t", "<cmd>NERDTreeToggle<cr>")
nnoremap("<leader>fa", "<cmd>Neoformat<cr>")
nnoremap("<leader>fd", "<cmd>lua vim.lsp.buf.code_action()<cr>")
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")
nnoremap("<leader>gb", "<cmd>Telescope git_branches<cr>")
nnoremap("<leader>fs", "<cmd>Telescope spell_suggest<cr>")
nnoremap("<leader>gc", "<cmd>Neogit<cr>")
