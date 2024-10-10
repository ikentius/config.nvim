return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      float_opts = {
        border = 'curved',
      },
      direction = 'float',
    }
    vim.keymap.set('n', '<A-t>', '<CMD>:ToggleTerm<CR>')
    vim.keymap.set('t', '<A-t>', '<C-\\><C-n><CMD>:ToggleTerm<CR>')

    vim.api.nvim_create_user_command('Tinker', function()
      vim.cmd 'TermExec cmd="php artisan tinker"'
    end, { bang = true })
  end,
}
