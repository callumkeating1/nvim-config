local harpoon = require("harpoon")


vim.keymap.set("n", "<C-a>", function() harpoon:list():add() end)
vim.keymap.set("n", "<A-a>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<F1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<F2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<F3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<F4>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<S-TAB>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<TAB>", function() harpoon:list():next() end)
