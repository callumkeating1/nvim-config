local opts = { noremap = true, silent = true }
local api = require("nvim-tree.api")
-- Resize with Ctrl + arrow keys
vim.keymap.set('n', '<A-k>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<A-j>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<A-h>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<A-l>', ':vertical resize +2<CR>', opts)
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-f>', require('telescope.builtin').live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<C-e>", api.tree.toggle, opts)
vim.keymap.set("n", "<C-e>", api.tree.toggle, opts)
vim.keymap.set("n", "<C-u>", "<CMD>UndotreeToggle<CR>",opts)
vim.keymap.set("n", "<TAB>", "<CMD>lua vim.diagnostic.open_float()<CR>", opts);

local modes = { 'n', 'i', 'v' }
local arrows = { '<Up>', '<Down>', '<Left>', '<Right>' }

for _, mode in ipairs(modes) do
  for _, key in ipairs(arrows) do
    vim.keymap.set(mode, key, '<Nop>', { silent = true })
  end
end
