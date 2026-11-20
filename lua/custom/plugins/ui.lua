-- =============================================================================
-- 1. Dashboard (mini.starter) with JOKER ASCII Header & Startup Timer
-- =============================================================================
local starter = require('mini.starter')

starter.setup {
  evaluate_single = true,
  header = table.concat({
    [[       ██╗ ██████╗ ██╗  ██╗███████╗██████╗ ]],
    [[       ██║██╔═══██╗██║ ██╔╝██╔════╝██╔══██╗]],
    [[       ██║██║   ██║█████╔╝ █████╗  ██████╔╝]],
    [[  ██   ██║██║   ██║██╔═██╗ ██╔══╝  ██╔══██╗]],
    [[  ╚█████╔╝╚██████╔╝██║  ██╗███████╗██║  ██║]],
    [[   ╚════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝]],
  }, '\n'),
  footer = 'Measuring startup...',
  items = {
    starter.sections.recent_files(5, true, false),
    {
      name = 'New File',
      action = 'enew',
      section = 'Actions',
    },
    {
      name = 'Find Files',
      action = 'Telescope find_files',
      section = 'Actions',
    },
    {
      name = 'Edit Config (init.lua)',
      action = 'edit ~/.config/nvim/init.lua',
      section = 'Actions',
    },
    {
      name = 'Quit Neovim',
      action = 'qall',
      section = 'Actions',
    },
  },
  content_hooks = {
    starter.gen_hook.adding_bullet('› '),
    starter.gen_hook.aligning('center', 'center'),
  },
}

-- Highlight the JOKER banner in your colorscheme's accent color
vim.api.nvim_set_hl(0, 'MiniStarterHeader', { link = 'Function' })

-- Compute and display exact startup time right after Neovim finishes loading
vim.schedule(function()
  local start = _G.nvim_start_time
  if start then
    local ms = (vim.uv.hrtime() - start) / 1e6
    starter.config.footer = string.format('⚡ Neovim loaded in %.2f ms', ms)
    starter.refresh()
  end
end)

-- =============================================================================
-- 2. Statusline (mini.statusline)
-- =============================================================================
local statusline = require('mini.statusline')

statusline.setup {
  use_icons = vim.g.have_nerd_font,
}

statusline.section_location = function()
  return '%2l:%-2v'
end
