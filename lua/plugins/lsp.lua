return {
  {
    'mason-org/mason.nvim',
    keys = { { "<leader>m", "<cmd>Mason<CR>" } },
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    },
    dependencies = { "telescope.nvim" }
  },
  {
    'neovim/nvim-lspconfig',
    cmd = {'LspInstall', 'LspUninstall'},
    event = 'BufEnter *.*',
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
      {'mason-org/mason-lspconfig.nvim'},
    },
    config = function()
      vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
      vim.keymap.set("n", "<leader>oi", function() vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true }) end, opts)
      vim.keymap.set("n", "<leader>fm", function() vim.lsp.buf.format() end, opts)

      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            diagnostics = { globals = {'vim'} }
          }
        }
      })
    end
  },
  {
    'mason-org/mason-lspconfig.nvim',
    lazy = true,
    opts = {
      automatic_enable = {
        exclude = { "jdtls" }
      }
    }
  },
}
