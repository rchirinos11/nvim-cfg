local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local jdtls = require('jdtls')
local jdtls_dir = vim.fn.stdpath'data' .. '/mason/packages/jdtls'
local jar_dir = vim.fn.glob(jdtls_dir .. '/plugins/org.eclipse.equinox.launcher_*.jar')

local config = {
  cmd = {
    'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-javaagent:' .. jdtls_dir .. '/lombok.jar',
    '-jar', jar_dir,
    '-configuration', jdtls_dir .. '/config_linux',
    '-data', jdtls_dir .. '/site/java/workspace-root/' .. project_name
  },

  settings = {
    java = {
      format = {
        settings = {
          url = os.getenv('HOME') .. '/Code/checkstyle.xml',
          profile = "Custom",
        },
      },
      contentProvider = { preferred = "fernflower" },
      completion = {
        favoriteStaticMembers = { "org.mockito.Mockito.*" },
        importOrder = {},
      },
    },
  }
}

vim.opt.colorcolumn = "140"
jdtls.start_or_attach(config)
