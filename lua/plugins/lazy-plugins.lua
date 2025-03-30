return {
	-- Plugins
	-- {
	--     "roobert/tailwindcss-colorizer-cmp.nvim",
	--     -- optionally, override the default options:
	--     config = function()
	--         require("tailwindcss-colorizer-cmp").setup({
	--             color_square_width = 2,
	--         })
	--     end
	-- },
	{
		"mbbill/undotree",
		lazy = false,
		keys = {
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle),
		},
	},
	"sindrets/diffview.nvim",
	"folke/twilight.nvim",
}
