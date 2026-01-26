return { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
	ensure_installed = {
	    'bash',
	    'markdown',
	    'mardown_inline',
	    'diff',
	    'lua',
	    'c',
	    'query',
	    'python',
	    'svelte',
	},
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
    }
}
