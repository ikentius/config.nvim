return {
  { -- Autoformat
    'stevearc/conform.nvim',
    lazy = false,
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { c = true, cpp = true, php = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        php = { 'php-cs-fixer' },
      },
      formatters = {
        ['php-cs-fixer'] = {
          command = 'php-cs-fixer',
          args = {
            'fix',
            '--rules=@PSR12,@PHP82Migration,no_unused_imports', -- Formatting preset. Other presets are available, see the php-cs-fixer docs.
            '$FILENAME',
          },
          stdin = false,
        },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
