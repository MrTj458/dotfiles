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
		end
	}, _config or {})
end

-- Language servers.
require'lspconfig'.gopls.setup(config())
require'lspconfig'.jedi_language_server.setup(config())
require'lspconfig'.html.setup(config())
require'lspconfig'.cssls.setup(config())
require'lspconfig'.tsserver.setup(config())
require'lspconfig'.emmet_ls.setup(config())
require'lspconfig'.jsonls.setup(config())

-- Disabled language servers
-- require'lspconfig'.eslint.setup(config())

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

-- Tree-sitter config
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Telescope
require('telescope').setup{
	defaults = {
		file_ignore_patterns = { "node_modules" }
	}
}

-- Auto pairs
require("nvim-autopairs").setup{}
