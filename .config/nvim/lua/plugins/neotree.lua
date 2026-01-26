return {
    {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
	    "nvim-lua/plenary.nvim",
	    "MunifTanjim/nui.nvim",
	    "nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	opts = {
	    close_if_last_window = true,
	    default_component_configs = {
		indent = {
		    with_expanders = true,
		    expander_collapsed = "",
		    expander_expanded = "",
		    expander_highlight = "NeoTreeExpander",
		},
	    },
	    window = {
		mapping = {
		    ["<space>"] = "none",
		},
		width = "20%"
	    },
	    event_handlers = {
		-- {
		--     event = "neo_tree_window_after_open",
		--     handler = function(args)
		-- 	local winid = args.winid or vim.fn.bufwinid(args.bufnr)
		-- 	local width = vim.api.nvim_win_get_width(winid)
		-- 	require('barbar.api').set_offset(width)  -- 40 is the width, adjust to your neo-tree width
		--     end,
		-- },
		-- {
		--     event = "neo_tree_window_after_close",
		--     handler = function()
		-- 	require('barbar.api').set_offset(0)
		--     end,
		-- },
	    },
	    lazy = false, -- neo-tree will lazily load itself
	}
    }
}
