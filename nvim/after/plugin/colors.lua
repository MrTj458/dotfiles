vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.g.catppuccin_flavour = "mocha"

local colors = require("catppuccin.palettes").get_palette()
colors.none = "NONE"
require("catppuccin").setup({
	transparent_background = true,
	integrations = {
		cmp = true,
		gitsigns = true,
		telescope = true,
		treesitter = true,
		treesitter_context = true,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = true,
		},
		neogit = true,
		native_lsp = {
			enabled = true,
		},
		illuminate = true,
	},
	custom_highlights = {
		CursorLine = { bg = colors.surface0 }
	}
})

vim.cmd('colorscheme catppuccin')
