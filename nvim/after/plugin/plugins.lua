vim.g.neoformat_try_node_exe = 1
vim.g.NERDTreeShowHidden = 1

require('nvim-treesitter.configs').setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})

require('telescope').setup{
	defaults = {
		file_ignore_patterns = {
			".git/",
			"node_modules/",
			"vendor/",
		},
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
}

require("nvim-autopairs").setup{}

require('lualine').setup{
	options = {
		icons_enabled = false,
		theme = 'catppuccin',
		component_separators = '|',
		section_separators = '',
	},
}

require('Comment').setup{}

require('indent_blankline').setup {
	show_trailing_blankline_indent = false,
}

require('gitsigns').setup()

require('illuminate').configure({
	providers = {
		'lsp',
		'treesitter',
		'regex',
	}
})

require('neoscroll').setup()
