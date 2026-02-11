-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }


map('n', '<leader>np', '<Cmd>NeovimProjectDiscover<CR>', { desc = "Open Projects List", silent = true })

map('n', '<leader>nc', function()
  vim.cmd('enew')
  vim.cmd('Neotree ' .. vim.fn.stdpath('config'))
end, { desc = 'Open Neovim config in Neotree' })

map('n', '<leader>e', '<Cmd>Neotree toggle<CR>', { desc = "Open File Explorer", silent = true })
map('n', '<A-l>', function()
    local ft = vim.bo.filetype
    if ft == 'neo-tree' then
	vim.cmd('wincmd p')      -- go back to previous (editor) window
    else
	vim.cmd('Neotree focus') -- jump to Neo-tree (opens if needed)
    end
end, { desc = 'Toggle focus: editor <-> Neo-tree' })


