require('rose-pine').setup({
    disable_background = true
})

vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = "dark"


function ColorMyPencils(color)
  color = color or "tokyonight"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end


ColorMyPencils()

vim.keymap.set("n", "<leader>ctk", "<cmd>lua ColorMyPencils(\"tokyonight\")<CR>")
vim.keymap.set("n", "<leader>crp", "<cmd>lua ColorMyPencils(\"rose-pine\")<CR>")
vim.keymap.set("n", "<leader>cns", "<cmd>lua ColorMyPencils(\"NeoSolarized\")<CR>")
