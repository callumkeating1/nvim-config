local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      -- no snippet expansion needed, so leave empty or no-op
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<TAB>"] = cmp.mapping.confirm({ select = true }),
    
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },   -- LSP keywords and symbols only
  }, {
    { name = "buffer" },     -- buffer words as fallback
  }),
})
