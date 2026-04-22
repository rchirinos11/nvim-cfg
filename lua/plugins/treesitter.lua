return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre *.*", "BufNewFile *.*" },
    build = ":TSUpdate",
    config = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "*",
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)
        end,
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufEnter *.*",
    keys = { { "<leader>tct", "<cmd>TSContextToggle<CR>" } },
  }
}
