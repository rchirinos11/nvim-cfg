return {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    keys = { { "<leader>ccp", "<cmd>colorscheme catppuccin<CR>" } },
    config = function()
      vim.cmd([[colorscheme catppuccin]])
    end
  },
  {
    "folke/tokyonight.nvim",
    keys = { { "<leader>ctk", "<cmd>colorscheme tokyonight<CR>" } },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    keys = { { "<leader>crp", "<cmd>colorscheme rose-pine<CR>" } },
  },
}
