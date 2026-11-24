return {
	"folke/snacks.nvim",
	opts = {
		notifier = {
			-- your notifier configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		gitbrowse = {
			-- your gitbrowse configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		dashboard = {
			sections = {
				{ section = "header", padding = 1 },
				{ section = "keys", gap = 1, padding = 1 },
				{ section = "startup" },
			},
			preset = {
				header = [[
      ╭─────────────────╮
      │  >_             │
      ╰─────────────────╯
            N E O V I M
]],
				keys = {
					{ icon = " ", key = "p", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
					{
						icon = " ",
						key = "l",
						desc = "Find Text",
						action = ":lua Snacks.dashboard.pick('live_grep')",
					},
					{
						icon = " ",
						key = "r",
						desc = "Recent Files",
						action = ":lua Snacks.dashboard.pick('oldfiles')",
					},
					{
						icon = " ",
						key = "c",
						desc = "Config",
						action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
					},
					{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
					{
						icon = "󰒲 ",
						key = "L",
						desc = "Lazy",
						action = ":Lazy",
						enabled = package.loaded.lazy ~= nil,
					},
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
				width = 100,
			},
		},
	},
}
