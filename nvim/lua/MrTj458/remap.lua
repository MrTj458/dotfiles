vim.keymap.set("n", "<leader>p", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fa", "<cmd>Neoformat<cr>")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

vim.keymap.set("n", "<leader>t", "<cmd>NERDTreeToggle<cr>")

vim.keymap.set("n", "H", "<cmd>:tabp<cr>")
vim.keymap.set("n", "L", "<cmd>:tabn<cr>")
vim.keymap.set("n", "<C-w>", "<cmd>:tabc<cr>")

vim.keymap.set("n", "<leader>v", "<cmd>:vsplit<cr>")
vim.keymap.set("n", "<leader>S", "<cmd>:split<cr>")

vim.keymap.set('n', 'J', vim.diagnostic.open_float)
vim.keymap.set('n', 'U', vim.lsp.buf.signature_help)
