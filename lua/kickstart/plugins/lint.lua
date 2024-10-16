return {

  { -- Linting
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'

      lint.linters.customphp = {
        cmd = './vendor/bin/phpstan',
        args = {
          'analyze',
          '--memory-limit=2G',
          '--error-format=json',
          '--no-progress',
        },
        ignore_exitcode = true,
        parser = function(output, bufnr)
          if vim.trim(output) == '' or output == nil then
            return {}
          end

          local file = vim.json.decode(output).files[vim.api.nvim_buf_get_name(bufnr)]

          if file == nil then
            return {}
          end

          local diagnostics = {}

          for _, message in ipairs(file.messages or {}) do
            table.insert(diagnostics, {
              lnum = type(message.line) == 'number' and (message.line - 1) or 0,
              col = 0,
              message = message.message,
              source = './vendor/bin/phpstan',
            })
          end

          return diagnostics
        end,
      }

      lint.linters_by_ft = {
        markdown = { 'markdownlint' },
        php = { 'customphp' },
      }
      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          require('lint').try_lint()
        end,
      })
    end,
  },
}
