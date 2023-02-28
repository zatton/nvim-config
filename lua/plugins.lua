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
		-- TODO
		config = true,
		event = "BufEnter",
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
			-- TODO cmd設定
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("config/lualine")
		end,
		event = "BufEnter",
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
		event = "BufEnter",
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("config/null-ls")
		end,
		event = "BufEnter",
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
		event = "BufEnter",
	},
	{
		"hrsh7th/nvim-insx",
		config = function()
			require("insx.preset.standard").setup()
			local endwise = require("insx.recipe.endwise")
			require("insx").add("<CR>", endwise.recipe(endwise.builtin))
		end,
		event = "BufEnter",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"RRethy/nvim-treesitter-endwise",
		},
		config = function()
			require("config/nvim-treesitter")
		end,
		event = "BufEnter",
	},
	-- {
	-- 	"romgrk/barbar.nvim",
	-- 	dependencies = "nvim-tree/nvim-web-devicons",
	-- 	config = function()
	-- 		require("config/barbar")
	-- 	end,
	-- 	event = "BufEnter",
	-- },
	{
		"kdheepak/tabline.nvim",
		config = function()
			require("config/tabline")
		end,
	},
}
