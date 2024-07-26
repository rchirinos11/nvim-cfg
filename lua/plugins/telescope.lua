return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
  keys = {
    { "<C-p>", "<cmd>Telescope git_files<CR>" },
    { "<leader>pf", "<cmd>Telescope find_files<CR>" },
    { "<leader>pb", "<cmd>Telescope buffers<CR>" },
    { "<leader>ps", "<cmd>Telescope live_grep<CR>" },
    { "<leader>vh", "<cmd>Telescope help_tags<CR>" },
    { "<leader>prr","<cmd>Telescope lsp_references<CR>" },
    { "<leader>pg", "<cmd>Telescope git_commits<CR>" },
    { "<leader>pd", "<cmd>Telescope diagnostics<CR>" },
  },
  config = function ()
    local telescope = require("telescope")
    telescope.setup({
      extensions = {
        ["ui-select"] = { require("telescope.themes").get_dropdown {} }
      }
    })
    telescope.load_extension("ui-select")
  end
}
