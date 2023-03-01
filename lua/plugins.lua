return {
	{ -- colorscheme
		"svrana/neosolarized.nvim",
		dependencies = {
			"tjdevries/colorbuddy.nvim",
		},
		opts = {
			background_set = true,
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		name = "gitsigns",
		-- displays git status, blame, etc. inline
		config = true,
		event = { "FocusLost", "CursorHold" },
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		cmd = { "NvimTreeOpen", "NvimTreeFindFile" },
		config = true,
	},
	{
		"thinca/vim-qfreplace",
		-- Qfreplace (quickfix) : replace text in quickfix
		config = true,
		cmd = "Qfreplace",
	},
	{
		"is0n/jaq-nvim",
		config = function()
			require("config/jaq-nvim")
		end,
		keys = { "<Leader>r" },
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("config/lualine")
		end,
		-- event = { "FocusLost", "CursorHold" },
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
			"svrana/neosolarized.nvim",
		},
		config = function()
			require("config/telescope")
		end,
		keys = { "tf", "tg", "ta", "tb", "tA", "tu" },
	},
	{
		"almo7aya/openingh.nvim",
		cmd = { "OpenInGHFile", "OpenInGHRepo" },
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			require("config/nvim-lspconfig")
		end,
		event = { "FocusLost", "CursorHold" },
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("config/null-ls")
		end,
		event = { "FocusLost", "CursorHold" },
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-vsnip",
			"hrsh7th/vim-vsnip",
		},
		config = function()
			require("config/cmp")
		end,
		event = { "InsertEnter" },
	},
	{
		"hrsh7th/nvim-insx",
		config = function()
			require("insx.preset.standard").setup()
			local endwise = require("insx.recipe.endwise")
			require("insx").add("<CR>", endwise.recipe(endwise.builtin))
		end,
		event = { "InsertEnter" },
	},
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"RRethy/nvim-treesitter-endwise",
		},
		config = function()
			require("config/nvim-treesitter")
		end,
		event = { "FocusLost", "CursorHold" },
	},
	{
		"kdheepak/tabline.nvim",
		config = function()
			require("config/tabline")
		end,
		-- event = { "FocusLost", "CursorHold" },
	},
}
