vim.api.nvim_create_user_command('Config', function()
  vim.cmd('enew')  -- Create new empty buffer
  vim.cmd('Neotree ' .. vim.fn.stdpath('config'))
end, {})
