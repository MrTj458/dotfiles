vim.g.neoformat_try_node_exe = 1

require("nvim-autopairs").setup{}

require("lualine").setup{
    options = {
        icons_enabled = false,
        theme = 'gruvbox-material',
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

require("ibl").setup{}

require("lsp_signature").setup{
    hint_enable = false,
}

require("which-key").setup{}
