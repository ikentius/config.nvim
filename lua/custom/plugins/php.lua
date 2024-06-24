return {
  {
    'ta-tikoma/php.easy.nvim',
    config = true,
    keys = {
      { '-b', '<CMD>PHPEasyDocBlock<CR>', mode = { 'n', 'v' } },
      { '-ii', '<CMD>PHPEasyInitInterface<CR>', mode = { 'n', 'v' } },
      { '-ic', '<CMD>PHPEasyInitClass<CR>', mode = { 'n', 'v' } },
      { '-iac', '<CMD>PHPEasyInitAbstractClass<CR>', mode = { 'n', 'v' } },
      { '-it', '<CMD>PHPEasyInitTrait<CR>', mode = { 'n', 'v' } },
      { '-ie', '<CMD>PHPEasyInitEnum<CR>', mode = { 'n', 'v' } },
      { '-c', '<CMD>PHPEasyAppendConstant<CR>', mode = { 'n', 'v' } },
      { '-p', '<CMD>PHPEasyAppendProperty<CR>', mode = { 'n', 'v' } },
      { '-m', '<CMD>PHPEasyAppendMethod<CR>', mode = { 'n', 'v' } },
      { '-_', '<CMD>PHPEasyAppendConstruct<CR>', mode = { 'n', 'v' } },
      { '-a', '<CMD>PHPEasyAppendArgument<CR>', mode = { 'n', 'v' } },
    },
  },
}
