vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('i', '<C-c>', "<Esc>")
vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format()
end)


vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'M', ":m '<-2<CR>gv=gv")
