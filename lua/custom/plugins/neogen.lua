vim.pack.add {
  'https://github.com/danymat/neogen',
}

require('neogen').setup {
  snippet_engine = 'nvim',
}

vim.keymap.set('n', '<leader>nf', function()
  require('neogen').generate()
end, { desc = '[N]eogen generate [F]unction doc' })
