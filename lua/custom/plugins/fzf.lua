return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- calling `setup` is optional for customization
    require('fzf-lua').setup {
      -- initial preset
      { 'fzf-vim' },
    }

    local fzflua = require 'fzf-lua'
    vim.keymap.set('n', '<leader>sf', fzflua.files, { desc = '[S]earch [F]iles' })
    vim.keymap.set('n', '<leader>sg', fzflua.live_grep, { desc = '[S]earch by [G]rep' })
    vim.keymap.set('n', '<leader><leader>', fzflua.buffers, { desc = '[ ] Find existing buffers' })
  end,
}
