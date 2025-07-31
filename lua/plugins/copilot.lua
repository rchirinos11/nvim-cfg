return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    ft = { "java", "python", },
    keys = { { "<leader>cpl", "<cmd>CopilotChat<CR>" , mode="n"}, { "<leader>cpl", "<cmd>CopilotChat<CR>" , mode="v"}  },
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {},
  },
  {
    "github/copilot.vim",
    lazy = true,
    keys = { { "<A-\\>" , mode="i"}, { "cpl", "<cmd>Copilot<CR>", mode="i" } },
  }
}
