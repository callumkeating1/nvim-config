local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.lua_ls.setup {
  capabilities = capabilities,
}

lspconfig.ts_ls.setup {
  capabilities = capabilities,
}

lspconfig.eslint.setup {
  capabilities = capabilities,
}
vim.keymap.set('n', '<C-i>', '<cmd>LspInfo<cr>', { noremap = true, silent = true, desc = 'LSP Info' })
vim.keymap.set('n', '<C-r>', '<cmd>LspRestart<cr>', { noremap = true, silent = true, desc = 'LSP Restart' })
