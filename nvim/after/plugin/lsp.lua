local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false,
    })

    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { desc = '[G]et [R]eferences', buffer = bufnr })
    vim.keymap.set('n', 'gs', require('telescope.builtin').lsp_document_symbols, { desc = '[G]et [S]ymbols', buffer = bufnr })
    vim.keymap.set('n', 'gi', require('telescope.builtin').lsp_implementations, { desc = '[G]et [I]mplementations', buffer = bufnr })
    vim.keymap.set('n', '<leader>gd', require('telescope.builtin').diagnostics, { desc = '[G]et [D]iagnostics', buffer = bufnr })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
      gopls,
      volar,
      emmet_ls,
      tsserver,
  },
  handlers = {
    lsp_zero.default_setup,
  },
})

require('lspconfig').emmet_ls.setup({
    filetypes = {
        "php",
        "html",
        "typescriptreact",
        "javascriptreact",
        "css",
        "sass",
        "scss",
        "less",
        "vue",
    }
})

local cmp = require('cmp')

cmp.setup({
    mapping = {
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-k>'] = cmp.mapping.select_prev_item(),
    }
})

