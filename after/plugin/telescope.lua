local telescope = require('telescope')
telescope.setup({
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
        }
    }
})


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>prr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>pg', builtin.git_commits, {})
vim.keymap.set('n', '<leader>pd', builtin.diagnostics, {})

telescope.load_extension('ui-select')
