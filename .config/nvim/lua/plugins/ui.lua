return {
    { "ellisonleao/gruvbox.nvim" },
    {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
	    vim.g.gruvbox_material_transparent_background = 1
	    vim.cmd.colorscheme("gruvbox-material")
	end,
    },
    {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
	    theme = "gruvbox",
	},
	config = function()
	    require('lualine').setup()
	end,
    },
    {
	'j-hui/fidget.nvim',
    },
    {
	"rcarriga/nvim-notify"
    },
    {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},
    }
}

