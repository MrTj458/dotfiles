vim.g.neoformat_try_node_exe = 1

require("nvim-autopairs").setup{}

require("lualine").setup{
    options = {
        icons_enabled = false,
        theme = 'gruvbox',
        component_separators = '|',
        section_separators = '',
    },
}

require("Comment").setup{}

require("gitsigns").setup{}

require("neoscroll").setup{}

require("illuminate").configure({
    prividers = {
        "lsp",
        "treesitter",
        "regex",
    }
})

require("indent_blankline").setup{
  show_trailing_blankline_indent = false,
  show_current_context_start = true,
}
