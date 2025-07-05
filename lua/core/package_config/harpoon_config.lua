local harpoon = require("harpoon")
local api = vim.api

vim.keymap.set("n", "<C-a>", function() harpoon:list():add() end)
vim.keymap.set("n", "<A-a>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<F1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<F2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<F3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<F4>", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<F5>", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<F6>", function() harpoon:list():select(6) end)
vim.keymap.set("n", "<F7>", function() harpoon:list():select(7) end)
vim.keymap.set("n", "<F8>", function() harpoon:list():select(8) end)
-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<S-TAB>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<TAB>", function() harpoon:list():next() end)

local function set_harpoon_menu_keymaps(bufnr)
  vim.keymap.set('n', 'x', ':w<CR>', { buffer = bufnr, noremap = true, silent = true })
end


api.nvim_create_autocmd("FileType", {
  pattern = "harpoon",  -- The filetype of Harpoon menu buffer
  callback = function(args)
    set_harpoon_menu_keymaps(args.buf)
  end,
})
