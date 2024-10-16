return {

  -- lazy.nvim
  { 'akinsho/horizon.nvim', version = '*' },

  { 'Mofiqul/dracula.nvim' },

  { 'marko-cerovac/material.nvim' },

  { 'oxfist/night-owl.nvim' },

  { 'rose-pine/neovim', name = 'rose-pine' },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      flavour = 'mocha',
    },
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'rose-pine-moon'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
