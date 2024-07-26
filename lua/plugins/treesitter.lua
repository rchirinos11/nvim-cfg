return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufEnter *.*",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { "java", "lua", "vim", "vimdoc", "query" },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufEnter *.*",
  }
}
