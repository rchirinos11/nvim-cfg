local lint = require('lint')
local chks = lint.linters.checkstyle

chks.args = {
    '-c', os.getenv('HOME') .. '/Code/checkstyle.xml',
}
lint.linters_by_ft = {
  java = {'checkstyle'},
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    lint.try_lint()
  end,
})
