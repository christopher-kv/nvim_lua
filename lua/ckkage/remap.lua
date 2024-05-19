vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format()
end)
vim.keymap.set('n', '<leader>pv', ':Ex<CR>', {remap = true, silent = true})
vim.keymap.set('i', '<C-c>', "<Esc>")

vim.keymap.set('t', '<C-w>t', '<C-\\><C-n><C-w>h<C-w>w', {remap = true, silent = true})

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'M', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>df', "lua require'jdtls.test_class()<CR>")
