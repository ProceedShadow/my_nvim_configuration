local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
    	"https://github.com/folke/lazy.nvim.git",
    	"--branch=stable", -- latest stable release
    	lazypath,
  	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		"goolord/alpha.nvim", 
		name = "alpha"
	},
	{
		"windwp/nvim-autopairs",
		name = "autopairs", 
		event = "InsertEnter", 
		config = true
	},
	{
		"akinsho/bufferline.nvim",
		name = "bufferline"
		version = "*", 
		dependencies = "nvim-tree/nvim-web-devicons"
	},
	{
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",

		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip"
	},
	{
		"numToStr/Comment.nvim",
		name = "comment"
	},
	{
		"lewis6991/gitsigns.nvim",
		name = "gitsigns"
	},
	{
		"dnlhc/glance.nvim",
		name = "glance"
	},
	{
    	"kawre/leetcode.nvim",
		name = "leetcode"
    	build = ":TSUpdate html",
    	dependencies = {
        	"nvim-telescope/telescope.nvim",
        	"nvim-lua/plenary.nvim", -- required by telescope
        	"MunifTanjim/nui.nvim",
        	-- optional
        	"nvim-treesitter/nvim-treesitter",
        	"rcarriga/nvim-notify",
        	"nvim-tree/nvim-web-devicons",
    		}
	},
	{
        	"williamboman/mason.nvim",
        	"williamboman/mason-lspconfig.nvim",
        	"neovim/nvim-lspconfig",
		"nvimdev/lspsaga.nvim"
	},
	{
    		"nvim-lualine/lualine.nvim",
    		dependencies = { "nvim-tree/nvim-web-devicons" }
	},
	{
		"tamago324/nlsp-settings.nvim",
		name = "nlsp_setting"
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons"}
	},
	{
		"nvim-tree/nvim-web-devicons"
	},
	{
		"nvim-telescope/telescope.nvim",
		name = "telescope"
		tag = '0.1.6',
      		dependencies = { 'nvim-lua/plenary.nvim' }
    	},
	{
  		'akinsho/toggleterm.nvim', 
		name = "toggleterm" 
		version = "*"
	},
	{ 
		"folke/tokyonight.nvim", 
		name = "tokyonight", 
		priority = 1000 
	},
	{
		"nvim-treesitter/nvim-treesitter",
		"p00f/nvim-ts-rainbow"
	},
	{
  		"folke/trouble.nvim",
  		branch = "dev", -- IMPORTANT!
  		keys = {
    			{
      				"<leader>xx",
      				"<cmd>Trouble diagnostics toggle<cr>",
      				desc = "Diagnostics (Trouble)",
    			},
    			{
      				"<leader>xX",
      				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      				desc = "Buffer Diagnostics (Trouble)",
    			},
			{
      				"<leader>cs",
     				"<cmd>Trouble symbols toggle focus=false<cr>",
      				desc = "Symbols (Trouble)",
    			},
    			{
      				"<leader>cl",
      				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      				desc = "LSP Definitions / references / ... (Trouble)",
    			},
    			{
      				"<leader>xL",
      				"<cmd>Trouble loclist toggle<cr>",
      				desc = "Location List (Trouble)",
    			},
    			{
      				"<leader>xQ",
      				"<cmd>Trouble qflist toggle<cr>",
      				desc = "Quickfix List (Trouble)",
    			},
  		}
	},
	{
		"folke/which-key.nvim"
	},
	"christoomey/vim-tmux-navigator",
	"lervag/vimtex",
}

local opts = {}

require("lazy").setup(plugins, opts)

require("plugin_manager.plugins_setup")

require("core.options")
require("core.keymaps")

require("plugins.alpha")
require("plugins.autopairs")
require("plugins.bufferline")
require("plugins.cmp")
require("plugins.comment")
require("plugins.gitsigns")
require("plugins.glance")
require("plugins.leetcode")
require("plugins.lsp")
require("plugins.lspsaga")
require("plugins.lualine")
require("plugins.nlspsettings")
require("plugins.nvim-tree")
require("plugins.nvim-web-devicons")
require("plugins.run")
require("plugins.telescope")
require("plugins.toggleterm")
require("plugins.tokyonight")
require("plugins.treesitter")
require("plugins.trouble")
require("plugins.vimtex")
require("plugins.which-key")
