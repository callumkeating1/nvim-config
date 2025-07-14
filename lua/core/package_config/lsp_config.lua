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
})
lspconfig.pylsp.setup({
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = true,
          ignore = { 'E501' },  -- example: ignore line-length
          maxLineLength = 100
        },
        pyls_mypy = { enabled = true },
        pylsp_black = { enabled = true },
        pylsp_isort = { enabled = true },
      }
    }
  }
})
lspconfig.pyright.setup({})
