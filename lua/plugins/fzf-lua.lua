return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	cmd = "FzfLua",
	opts = function(_, opts)
		local config = require("fzf-lua.config")
		local actions = require("fzf-lua.actions")

		return {
			actions = {
				files = {
					["default"] = actions.file_edit_or_qf,
					["ctrl-x"] = actions.file_split,
					["ctrl-v"] = actions.file_vsplit,
					["ctrl-t"] = actions.file_tabedit,
					["ctrl-q"] = actions.file_sel_to_qf,
				},
			},
		}
	end,
	-- opts = {
	--
	--    },
	keys = {
		{ "<c-j>", "<c-j>", ft = "fzf", mode = "t", nowait = true },
		{ "<c-k>", "<c-k>", ft = "fzf", mode = "t", nowait = true },
		{
			"<space>b",
			"<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>",
			desc = "Switch Buffer",
		},
		{ "<space>/", "<cmd>FzfLua live_grep<cr>", desc = "Grep (Root Dir)" },
		{ "<space>(", "<cmd>FzfLua grep<cr>", desc = "Grep (Root Dir)" },
		{ "<space>:", "<cmd>FzfLua command_history<cr>", desc = "Command History" },
		{ "<space>p", "<cmd>FzfLua files<cr>", desc = "Find Files (Root Dir)" },
		-- find
		{ "<space>fb", "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
		-- { "<leader>fc", LazyVim.pick.config_files(), desc = "Find Config File" },
		-- { "<leader>ff", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
		-- { "<leader>fF", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
		{ "<space>fg", "<cmd>FzfLua git_files<cr>", desc = "Find Files (git-files)" },
		{ "<space>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent" },
		-- { "<leader>fR", LazyVim.pick("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
		-- git
		{ "<space>gc", "<cmd>FzfLua git_commits<CR>", desc = "Commits" },
		{ "<space>gs", "<cmd>FzfLua git_status<CR>", desc = "Status" },
		-- search
		{ '<space>r"', "<cmd>FzfLua registers<cr>", desc = "Registers" },
		{ "<space>f/", "<cmd>FzfLua grep_curbuf<cr>", desc = "Buffer" },
		{ "<space>fc", "<cmd>FzfLua commands<cr>", desc = "Commands" },
		{ "<space>d", "<cmd>FzfLua diagnostics_document<cr>", desc = "Document Diagnostics" },
		{ "<space>fh", "<cmd>FzfLua highlights<cr>", desc = "Search Highlight Groups" },
		{ "<space>fj", "<cmd>FzfLua jumps<cr>", desc = "Jumplist" },
		{ "<space>fk", "<cmd>FzfLua keymaps<cr>", desc = "Key Maps" },
		{ "<space>fM", "<cmd>FzfLua man_pages<cr>", desc = "Man Pages" },
		{ "<space>fm", "<cmd>FzfLua marks<cr>", desc = "Jump to Mark" },
		{ "<space>c", "<cmd>FzfLua resume<cr>", desc = "Resume" },
		{ "<space>fq", "<cmd>FzfLua quickfix<cr>", desc = "Quickfix List" },
		{ "<space>fl", "<cmd>FzfLua lines<cr>", desc = "Open lines" },
		-- { "<leader>sw", LazyVim.pick("grep_cword"), desc = "Word (Root Dir)" },
		-- { "<leader>sW", LazyVim.pick("grep_cword", { root = false }), desc = "Word (cwd)" },
		-- { "<leader>sw", LazyVim.pick("grep_visual"), mode = "v", desc = "Selection (Root Dir)" },
		-- { "<leader>sW", LazyVim.pick("grep_visual", { root = false }), mode = "v", desc = "Selection (cwd)" },
		-- { "<leader>uC", LazyVim.pick("colorschemes"), desc = "Colorscheme with Preview" },
	},
}
