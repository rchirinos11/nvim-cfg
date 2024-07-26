-- For J*va
return {
  {
    "mfussenegger/nvim-jdtls",
    dependencies = { "nvim-telescope/telescope.nvim", },
    ft = "java",
  },
  {
    "https://gitlab.com/schrieveslaach/sonarlint.nvim",
    ft = "java",
    opts = {
      server = {
        cmd = {
          'sonarlint-language-server',
          '-stdio',
          '-analyzers',
          vim.fn.expand(vim.fn.stdpath'data' .. '/mason/packages/sonarlint-language-server/extension/analyzers/sonarjava.jar'),
        }
      },
      filetypes = {'java'}
    }
  },
}
