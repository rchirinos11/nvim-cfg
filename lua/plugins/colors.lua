return {
  {
    "rose-pine/neovim",
    lazy = false,
    priority = 1000,
    name = "rose-pine",
    keys = { { "<leader>crp", "<cmd>colorscheme rose-pine<CR>" } },
    config = function()
      vim.cmd([[colorscheme rose-pine]])
    end
  },
}
