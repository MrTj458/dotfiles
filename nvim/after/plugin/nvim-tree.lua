vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
	view = {
		adaptive_size = true,
	},
	renderer = {
		icons = {
			glyphs = {
				default = "📄",
				symlink = "🔗",
				bookmark = "🔖",
				folder = {
					arrow_closed = ">",
					arrow_open = "v",
					default = "📁",
					open = "📂",
					empty = "📁",
					empty_open = "📂",
					symlink = "📫",
					symlink_open = "📬",
				},
				git = {
					unstaged = "🖋️",
					staged = "📦",
					unmerged = "📥",
					renamed = "📝",
					untracked = "✨",
					deleted = "❌",
					ignored = "🔒",
				}
			}
		}
	}
})
