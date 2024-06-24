return {
  'numToStr/FTerm.nvim',
  keys = {
    { '<leader>ft', '<<CMD>lua require("FTerm").toggle()<CR>', desc = '[T]erminal [F]loating' },
  },
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
    vim.keymap.set('n', '<leader>ft', '<CMD>lua require("FTerm").toggle()<CR>')
    vim.keymap.set('t', '<leader>ft', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
    vim.api.nvim_create_user_command('Tinker', function()
      require('FTerm').run 'php artisan tinker'
    end, { bang = true })
  end,
}
