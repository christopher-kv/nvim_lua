local lsp = require('lsp-zero').preset({"recomended"})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})

  local opts = {buffer = bufnr, remap = false}
  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end ,opts)
  vim.keymap.set('n',  "K", function() vim.lsp.buf.hover() end,opts)
  vim.keymap.set('n',  '<leader>vws', function() vim.lsp.buf.workspace_symbol() end ,opts)
  vim.keymap.set('n',  '<leader>vd', function() vim.diagnostics.open_float() end,opts)
  vim.keymap.set('n',  '[d',function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set('n',  ']d',function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set('n', "<leader>vca", function() vim.lsp.buf.code_action() end ,opts)
  vim.keymap.set('n', "<leader>vrr", function() vim.lsp.buf.references() end ,opts)
  vim.keymap.set('n', "<leader>vrn", function() vim.lsp.buf.rename() end ,opts)
  vim.keymap.set('i', "<C-h>", function() vim.lsp.buf.signature_help() end ,opts)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<Tab>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),

  }),
})

lsp.setup()
