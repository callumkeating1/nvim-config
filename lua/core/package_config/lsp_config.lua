return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
            "lua_ls",
            "ts_ls",
            "eslint"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require('lspconfig')

        lspconfig.lua_ls.setup ({})
        lspconfig.ts_ls.setup ({})
        lspconfig.eslint.setup ({})
        vim.keymap.set('n', '<C-i>', '<cmd>LspInfo<cr>', { noremap = true, silent = true, desc = 'LSP Info' })
        vim.keymap.set('n', '<C-r>', '<cmd>LspRestart<cr>', { noremap = true, silent = true, desc = 'LSP Restart' })
    end
  }
}