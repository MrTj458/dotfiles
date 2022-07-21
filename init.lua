-- Set autocomplete capabilities.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- LSP keybinds
function lsp_maps()
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
	vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
	vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
	vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer=0})
	vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})
	vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer=0})
end

-- Language servers.
require'lspconfig'.gopls.setup{
	capabilities=capabilities,
	on_attach=lsp_maps 
}
require'lspconfig'.jedi_language_server.setup{
	capabilities=capabilities,
	on_attach=lsp_maps
}
require'lspconfig'.html.setup{
	capabilities=capabilities,
	on_attach=lsp_maps
}
require'lspconfig'.cssls.setup{
	capabilities=capabilities,
	on_attach=lsp_maps
}
require'lspconfig'.tsserver.setup{
	capabilities=capabilities,
	on_attach=lsp_maps
}
require'lspconfig'.jsonls.setup{
	capabilities=capabilities,
	on_attach=lsp_maps
}

-- Setup nvim-cmp.
vim.opt.completeopt = {"menu", "menuone", "noselect"}
local cmp = require'cmp'
cmp.setup({
snippet = {
  expand = function(args)
	require('luasnip').lsp_expand(args.body)
  end,
},
mapping = cmp.mapping.preset.insert({
  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping.abort(),
  ['<Tab>'] = cmp.mapping.confirm({ select = true }),
}),
sources = cmp.config.sources({
  { name = 'nvim_lsp' },
  { name = 'luasnip' },
}, {
  { name = 'buffer' },
})
})
