-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        hijack_netrw_behavior = 'open_current', -- netrw disabled, opening a directory opens neo-tree
      },
      window = {
        position = 'right',
      },
    }
    vim.keymap.set('n', '<leader>e', ':Neotree toggle <cr>')
  end,
}
