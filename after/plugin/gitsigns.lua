local gitsigns = require'gitsigns'

gitsigns.setup()

vim.keymap.set("n", "<leader>gj", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
vim.keymap.set("n", "<leader>gn", ":Gitsigns next_hunk<CR>", {})
