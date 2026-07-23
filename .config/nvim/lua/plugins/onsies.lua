return {
	'brenoprata10/nvim-highlight-colors',
	'fei6409/log-highlight.nvim',
	{
	    "denialofsandwich/sudo.nvim",
	    cmd = { "SudoRead", "SudoWrite", "SudoEdit" },
	    dependencies = {
		"MunifTanjim/nui.nvim",
	    },
	    opts = {
		-- optional configuration
		-- commands = true,
	    },
	}
}
