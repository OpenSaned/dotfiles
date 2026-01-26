local function get_splash()
    local file = vim.fn.stdpath("config") .. "/assets/splash.txt"
    local f = io.open(file, "r")
    local content = {}
    if not f then
	content = { 
	    " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
	    " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
	    " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
	    " ██║╚██╗default══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
	    " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
	    " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
	}
    else
	for line in io.lines(file) do
	    table.insert(content, line)
	end
    end
    return content
end

return {
    "startup-nvim/startup.nvim",
    dependencies = { 
	"nvim-telescope/telescope.nvim",
	"nvim-lua/plenary.nvim", 
	"nvim-telescope/telescope-file-browser.nvim" 
    },
    config = function()
	require "startup".setup({
	    -- every line should be same width without escaped \
	    header = {
		type = "text",
		oldfiles_directory = false,
		align = "center",
		fold_section = false,
		title = "Header",
		margin = 5,
		content = get_splash(),
		highlight = "Statement",
		default_color = "",
		oldfiles_amount = 0,
	    },
	    -- name which will be displayed and command
	    body = {
		type = "mapping",
		oldfiles_directory = false,
		align = "center",
		fold_section = false,
		title = "Basic Commands",
		margin = 5,
		content = {
		    { " Recent Files", "Telescope oldfiles", "<leader>of" },
		    { " Config", "Config", "<leader>nc" },
		    { " Find Project", "NeovimProjectDiscover", "<leader>np" },
		    { " File Browser", "Telescope file_browser", "<leader>fb" },
		    { " Colorschemes", "Telescope colorscheme", "<leader>cs" },
		},
		highlight = "String",
		default_color = "",
		oldfiles_amount = 0,
	    },
	    footer = {
		type = "text",
		oldfiles_directory = false,
		align = "center",
		fold_section = false,
		title = "Footer",
		margin = 5,
		content = { "startup.nvim" },
		highlight = "Number",
		default_color = "",
		oldfiles_amount = 0,
	    },

	    options = {
		mapping_keys = true,
		cursor_column = 0.5,
		empty_lines_between_mappings = true,
		disable_statuslines = true,
		paddings = { 1, 3, 3, 0 },
	    },
	    mappings = {
		execute_command = "<CR>",
		open_file = "o",
		open_file_split = "<c-o>",
		open_section = "<TAB>",
		open_help = "?",
	    },
	    colors = {
		background = "#1f2227",
		folded_section = "#56b6c2",
	    },
	    parts = { "header", "body", "footer" },
	})

    end
}
