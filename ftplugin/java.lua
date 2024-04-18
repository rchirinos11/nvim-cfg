local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local jdtls = require('jdtls')
local jdtls_dir = vim.fn.stdpath'data' .. '/mason/packages/jdtls'
local workspace_dir = jdtls_dir .. '/site/java/workspace-root/' .. project_name

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
    '-jar', jdtls_dir .. '/plugins/org.eclipse.equinox.launcher_1.6.700.v20231214-2017.jar',
    '-configuration', jdtls_dir .. '/config_linux',
    '-data', workspace_dir
  },

  root_dir = require('jdtls.setup').find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),

  settings = {
    java = {
      references = {
        includeDecompiledSources = true,
      },
      format = {
        enabled = true,
        settings = {
          url = os.getenv('HOME') .. '/Code/checkstyle.xml',
          profile = "CustomCheckstyle",
        },
      },
      eclipse = {
        downloadSources = true,
      },
      maven = {
        downloadSources = true,
      },
      signatureHelp = { enabled = true },
      contentProvider = { preferred = "fernflower" },
      completion = {
        favoriteStaticMembers = { "org.mockito.Mockito.*" },
        filteredTypes = {
          "com.sun.*",
          "io.micrometer.shaded.*",
          "java.awt.*",
          "jdk.*",
          "sun.*",
        },
        importOrder = {},
      },
      sources = {
        organizeImports = {
          starThreshold = 10,
          staticStarThreshold = 99,
        },
      },
      codeGeneration = {
        toString = {
          template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
        },
        useBlocks = true,
      },
    },
  }
}

vim.opt.colorcolumn = "140"
jdtls.start_or_attach(config)
