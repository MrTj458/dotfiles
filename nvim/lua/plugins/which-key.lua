return {
	"folke/which-key.nvim",
	event = "VimEnter",
	config = function()
		require("which-key").setup()

		require("which-key").add({
			{ "<leader>c", group = "[C]ode", hidden = true },
			{ "<leader>d", group = "[D]ocument", hidden = true },
			{ "<leader>r", group = "[R]ename", hidden = true },
			{ "<leader>s", group = "[S]earch", hidden = true },
			{ "<leader>w", group = "[W]orkspace", hidden = true },
		})
	end,
}
