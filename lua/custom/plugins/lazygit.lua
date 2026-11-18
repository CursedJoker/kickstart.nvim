vim.pack.add({
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/kdheepak/lazygit.nvim',
})

-- Optional floating window settings (defaults shown)
vim.g.lazygit_floating_window_winblend = 0 -- transparency of floating window (0-100)
vim.g.lazygit_floating_window_scaling_factor = 0.9 -- scaling factor for floating window
vim.g.lazygit_floating_window_border_chars = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' } -- customize border
vim.g.lazygit_floating_window_use_plenary = 0 -- use plenary.nvim to manage floating window if available
vim.g.lazygit_use_neovim_remote = 1 -- fallback to 0 if neovim-remote is not installed

vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<cr>', { desc = 'LazyGit' })
