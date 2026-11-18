local loaded = false

local function open_lazygit()
  if not loaded then
    vim.pack.add({
      'https://github.com/nvim-lua/plenary.nvim',
      'https://github.com/kdheepak/lazygit.nvim',
    })
    loaded = true
  end
  vim.cmd('LazyGit')
end

-- Load and open on <leader>lg
vim.keymap.set('n', '<leader>lg', open_lazygit, { desc = 'LazyGit' })

-- Load and open if :LazyGit is typed manually
vim.api.nvim_create_user_command('LazyGit', function()
  pcall(vim.api.nvim_del_user_command, 'LazyGit')
  open_lazygit()
end, {})
