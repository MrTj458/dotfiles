function config(_config)
	return vim.tbl_deep_extend("force", {
		capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
		on_attach = function()
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {buffer=0})
			vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, {buffer=0})
			vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {buffer=0})
			vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
			vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer=0})
			vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})
			vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer=0})
			vim.keymap.set("n", "<leader>gr", "<cmd>Telescope lsp_references<cr>", {buffer=0})
		end
	}, _config or {})
end

-- Language servers.
require'lspconfig'.gopls.setup(config())
require'lspconfig'.jedi_language_server.setup(config())
require'lspconfig'.html.setup(config())
require'lspconfig'.cssls.setup(config())
require'lspconfig'.tsserver.setup(config())
require'lspconfig'.eslint.setup(config())
require'lspconfig'.jsonls.setup(config())
require'lspconfig'.volar.setup(config())
require'lspconfig'.intelephense.setup(config())
require'lspconfig'.yamlls.setup(config())
require'lspconfig'.emmet_ls.setup(config({
	filetypes = {
		"php",
		"html",
		"typescriptreact",
		"javascriptreact",
		"css",
		"sass",
		"scss",
		"less",
	}
}))
