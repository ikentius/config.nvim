return {
  'numToStr/FTerm.nvim',
  config = function()
    require('FTerm').setup {
      blend = 5,
      dimensions = {
        height = 0.90,
        width = 0.90,
        x = 0.5,
        y = 0.5,
      },
    }
    vim.keymap.set('n', '<A-t>', '<CMD>lua require("FTerm").toggle()<CR>')
    vim.keymap.set('t', '<A-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

    vim.api.nvim_create_user_command('Tinker', function()
      require('FTerm').run 'php artisan tinker'
    end, { bang = true })

    vim.api.nvim_create_user_command('Serve', function()
      require('FTerm').scratch { cmd = { 'php', 'artisan', 'serve' } }
    end, { bang = true })
  end,
}
