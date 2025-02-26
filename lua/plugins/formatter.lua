return {
  {
    "mhartington/formatter.nvim",
    event = "BufEnter *.*",
    config = function()
      local augroup = vim.api.nvim_create_augroup
      local autocmd = vim.api.nvim_create_autocmd
      augroup("__formatter__", { clear = true })
      autocmd("BufWritePost", {
        group = "__formatter__",
        command = ":FormatWrite",
      })

      require("formatter").setup {
        logging = true,
        log_level = vim.log.levels.WARN,
        filetype = {
          go = {
            require("formatter.filetypes.go").gofumpt
          },
          c = {
            require("formatter.filetypes.c").clangformat
          },
          ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace
          },
        }
      }

    end
  }
}
