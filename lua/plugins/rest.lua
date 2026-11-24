return {
	"mistweaverco/kulala.nvim",
	-- Use the curl-based release; newer versions use a separate backend.
	tag = "v5.3.4",
	submodules = false,
	ft = { "http", "rest" },
	opts = {},
	keys = {
		{
			"<leader>rr",
			function()
				require("kulala").run()
			end,
			ft = { "http", "rest" },
			desc = "Run HTTP request under cursor",
		},
	},
}
