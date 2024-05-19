return {
	'nvim-telescope/telescope.nvim',
	tag='0.1.6',
    dependencies= { 'nvim-lua/plenary.nvim'},
--     keys={
--         {'n', '<leader>pf', builtin.find_files, {}},
--         {'n', '<C-p>', builtin.git_files, {}},
--         {'n', '<leader>ps', function()
--             builtin.grep_string({ search = vim.fn.input( "Grep > ") })
--         end},
--     },
}
