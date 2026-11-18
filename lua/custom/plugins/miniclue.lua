vim.pack.add {
  'https://github.com/echasnovski/mini.clue',
}

local miniclue = require 'mini.clue'

miniclue.setup {
  triggers = {
    -- Leader triggers
    { mode = 'n', keys = '<Leader>' },
    { mode = 'x', keys = '<Leader>' },

  -- yank triggers
  --- Group labels for inner/around text objects inside 'y'

    { mode = 'n', keys = 'yi', desc = '+Yank inner' },
    { mode = 'n', keys = 'ya', desc = '+Yank around' },

    -- Basic line & word motions
    { mode = 'n', keys = 'yy', desc = 'Yank current line' },
    { mode = 'n', keys = 'yw', desc = 'Yank to start of next word' },
    { mode = 'n', keys = 'yW', desc = 'Yank to start of next WORD' },
    { mode = 'n', keys = 'ye', desc = 'Yank to end of word' },
    { mode = 'n', keys = 'yE', desc = 'Yank to end of WORD' },
    { mode = 'n', keys = 'yb', desc = 'Yank back to start of word' },
    { mode = 'n', keys = 'y$', desc = 'Yank to end of line' },
    { mode = 'n', keys = 'y0', desc = 'Yank to start of line (col 0)' },
    { mode = 'n', keys = 'y^', desc = 'Yank to first non-blank char' },
    { mode = 'n', keys = 'yG', desc = 'Yank to end of file' },
    { mode = 'n', keys = 'ygg', desc = 'Yank to top of file' },

    -- Inner text objects (yi...) - content ONLY (excludes quotes/brackets/whitespace)
    { mode = 'n', keys = 'yiw', desc = 'Yank inner word' },
    { mode = 'n', keys = 'yiW', desc = 'Yank inner WORD' },
    { mode = 'n', keys = 'yip', desc = 'Yank inner paragraph' },
    { mode = 'n', keys = 'yis', desc = 'Yank inner sentence' },
    { mode = 'n', keys = 'yi"', desc = 'Yank inside "' },
    { mode = 'n', keys = "yi'", desc = "Yank inside '" },
    { mode = 'n', keys = 'yi`', desc = 'Yank inside `' },
    { mode = 'n', keys = 'yi(', desc = 'Yank inside (' },
    { mode = 'n', keys = 'yi[', desc = 'Yank inside [' },
    { mode = 'n', keys = 'yi{', desc = 'Yank inside {' },
    { mode = 'n', keys = 'yi<', desc = 'Yank inside <' },
    { mode = 'n', keys = 'yit', desc = 'Yank inside HTML/XML tag' },

    -- Around text objects (ya...) - INCLUDES the quotes/brackets/trailing space
    { mode = 'n', keys = 'yaw', desc = 'Yank around word (+ space)' },
    { mode = 'n', keys = 'yaW', desc = 'Yank around WORD (+ space)' },
    { mode = 'n', keys = 'yap', desc = 'Yank around paragraph' },
    { mode = 'n', keys = 'yas', desc = 'Yank around sentence' },
    { mode = 'n', keys = 'ya"', desc = 'Yank around "' },
    { mode = 'n', keys = "ya'", desc = "Yank around '" },
    { mode = 'n', keys = 'ya`', desc = 'Yank around `' },
    { mode = 'n', keys = 'ya(', desc = 'Yank around (' },
    { mode = 'n', keys = 'ya[', desc = 'Yank around [' },
    { mode = 'n', keys = 'ya{', desc = 'Yank around {' },
    { mode = 'n', keys = 'ya<', desc = 'Yank around <' },
    { mode = 'n', keys = 'yat', desc = 'Yank around HTML/XML tag' },-- Group labels for inner/around text objects inside 'y'
    { mode = 'n', keys = 'yi', desc = '+Yank inner' },
    { mode = 'n', keys = 'ya', desc = '+Yank around' },

    -- Basic line & word motions
    { mode = 'n', keys = 'yy', desc = 'Yank current line' },
    { mode = 'n', keys = 'yw', desc = 'Yank to start of next word' },
    { mode = 'n', keys = 'yW', desc = 'Yank to start of next WORD' },
    { mode = 'n', keys = 'ye', desc = 'Yank to end of word' },
    { mode = 'n', keys = 'yE', desc = 'Yank to end of WORD' },
    { mode = 'n', keys = 'yb', desc = 'Yank back to start of word' },
    { mode = 'n', keys = 'y$', desc = 'Yank to end of line' },
    { mode = 'n', keys = 'y0', desc = 'Yank to start of line (col 0)' },
    { mode = 'n', keys = 'y^', desc = 'Yank to first non-blank char' },
    { mode = 'n', keys = 'yG', desc = 'Yank to end of file' },
    { mode = 'n', keys = 'ygg', desc = 'Yank to top of file' },

    -- Inner text objects (yi...) - content ONLY (excludes quotes/brackets/whitespace)
    { mode = 'n', keys = 'yiw', desc = 'Yank inner word' },
    { mode = 'n', keys = 'yiW', desc = 'Yank inner WORD' },
    { mode = 'n', keys = 'yip', desc = 'Yank inner paragraph' },
    { mode = 'n', keys = 'yis', desc = 'Yank inner sentence' },
    { mode = 'n', keys = 'yi"', desc = 'Yank inside "' },
    { mode = 'n', keys = "yi'", desc = "Yank inside '" },
    { mode = 'n', keys = 'yi`', desc = 'Yank inside `' },
    { mode = 'n', keys = 'yi(', desc = 'Yank inside (' },
    { mode = 'n', keys = 'yi[', desc = 'Yank inside [' },
    { mode = 'n', keys = 'yi{', desc = 'Yank inside {' },
    { mode = 'n', keys = 'yi<', desc = 'Yank inside <' },
    { mode = 'n', keys = 'yit', desc = 'Yank inside HTML/XML tag' },

    -- Around text objects (ya...) - INCLUDES the quotes/brackets/trailing space
    { mode = 'n', keys = 'yaw', desc = 'Yank around word (+ space)' },
    { mode = 'n', keys = 'yaW', desc = 'Yank around WORD (+ space)' },
    { mode = 'n', keys = 'yap', desc = 'Yank around paragraph' },
    { mode = 'n', keys = 'yas', desc = 'Yank around sentence' },
    { mode = 'n', keys = 'ya"', desc = 'Yank around "' },
    { mode = 'n', keys = "ya'", desc = "Yank around '" },
    { mode = 'n', keys = 'ya`', desc = 'Yank around `' },
    { mode = 'n', keys = 'ya(', desc = 'Yank around (' },
    { mode = 'n', keys = 'ya[', desc = 'Yank around [' },
    { mode = 'n', keys = 'ya{', desc = 'Yank around {' },
    { mode = 'n', keys = 'ya<', desc = 'Yank around <' },
    { mode = 'n', keys = 'yat', desc = 'Yank around HTML/XML tag' },
    -- Built-in Vim triggers
    { mode = 'n', keys = 'y' },
    { mode = 'n', keys = 'y' },
    { mode = 'x', keys = 'g' },
    { mode = 'x', keys = 'g' },
    { mode = 'n', keys = 'z' },
    { mode = 'x', keys = 'z' },
    { mode = 'n', keys = '[' },
    { mode = 'n', keys = ']' },
    { mode = 'n', keys = '<C-w>' },
    { mode = 'n', keys = '"' },
    { mode = 'n', keys = "'" },
  },

  clues = {
    -- Built-in Vim key descriptions
    miniclue.gen_clues.builtin_completion(),
    miniclue.gen_clues.g(),
    miniclue.gen_clues.z(),
    miniclue.gen_clues.windows(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers(),

    -- Your custom <leader> groups & reminder notes
    { mode = 'n', keys = '<Leader>b', desc = '+[B]uffers Files' },
    { mode = 'n', keys = '<Leader>c', desc = '+[F]ormatter' },
    { mode = 'n', keys = '<Leader>f', desc = ' +[F]ind / File [Telescope]' },
    { mode = 'n', keys = '<Leader>g', desc = '+[G]o [T]o' },
    { mode = 'n', keys = 'y', desc = '+Yank' },
    { mode = 'n', keys = '<Leader>l', desc = '+[L]azyGit' },
    { mode = 'n', keys = '<Leader>s', desc = '+[S]earch' },
    { mode = 'n', keys = '<Leader>t', desc = '+[T]oggle' },
    { mode = 'n', keys = '<Leader>m', desc = '+[M]ason' },
    { mode = 'n', keys = '<Leader>z', desc = '+[Z]en Mode' },
    { mode = 'n', keys = '<Leader>[', desc = ' [[] Previous Buffer' },
    { mode = 'n', keys = '<Leader>]', desc = ' []] Next Buffer' },
    { mode = 'n', keys = '<Leader>-', desc = '[-] Oil (press - without Space)' },
  },

  window = {
    delay = 200,
    config = {
      width = 'auto',
      border = 'rounded',
    },
  },
}
local function set_transparent_clue()
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'MiniClueBorder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'MiniClueTitle', { bg = 'none' })
end

set_transparent_clue()
vim.api.nvim_create_autocmd('ColorScheme', {
  callback = set_transparent_clue,
})
