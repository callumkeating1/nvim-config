local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.lua_ls.setup {
  capabilities = capabilities,
}

lspconfig.ts_ls.setup {
  capabilities = capabilities,
}
lspconfig.emmet_ls.setup({
  filetypes = { "html", "css", "javascriptreact", "typescriptreact" },
  capabilities = capabilities,
})
lspconfig.pyright.setup({
  capabilities = capabilities,
})
