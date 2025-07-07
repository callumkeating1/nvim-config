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
  settings = {
    eslint = {
      -- helps eslint find the eslintrc when it's placed in a subfolder instead of the cwd root
      workingDirectories = { mode = "auto" },
      experimental = {
        -- allows to use flat config format
        useFlatConfig = true,
      },
    },
  },
}
