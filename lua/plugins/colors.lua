return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    keys = { { "<leader>ckg", "<cmd>colorscheme kanagawa<CR>" } },
    config = function()
      vim.cmd([[colorscheme kanagawa]])
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    keys = { { "<leader>ccp", "<cmd>colorscheme catppuccin<CR>" } },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    keys = { { "<leader>crp", "<cmd>colorscheme rose-pine<CR>" } },
  },
  {
    "santos-gabriel-dario/darcula-solid.nvim",
    dependencies = "rktjmp/lush.nvim",
    keys = { { "<leader>cds", "<cmd>colorscheme darcula-solid<CR>" } },
  },
}
