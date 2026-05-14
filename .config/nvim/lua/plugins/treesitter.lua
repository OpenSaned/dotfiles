

return {
    {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup()
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        branch = 'main',
        build = ':TSUpdate',
        opts = {
            ensure_installed = {
                'bash',
		'c',
                'cpp',
		'diff',
                'git_config',
                'gitignore',
                'html',
                'http',
                'javascript',
                'json',
                'lua',
                'markdown',
                'markdown_inline',
                'python',
                'regex',
                'rust',
		'svelte',
                'tsx',
                'typescript',
            },
        },
        config = function(_, opts)

            local treesitter = require('nvim-treesitter')
            treesitter.setup(opts)
            treesitter.install(opts.ensure_installed)
            vim.api.nvim_create_autocmd('FileType', {
                callback = function(args)
                    if vim.list_contains(treesitter.get_installed(), vim.treesitter.language.get_lang(args.match)) then
                        vim.treesitter.start(args.buf)
                    end
                end,
            })
        end,
    },
}
