local cmp = require("cmp")

cmp.setup({
    snippet = {
    expand = function(args)
    end,
    },
    mapping = cmp.mapping.preset.insert({
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
    { name = "nvim_lsp" },
    }, {
    { name = "buffer" },
    }),
})
