
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true


local api = require("nvim-tree.api")

function changeDir()
  local node = api.tree.get_node_under_cursor()
  if not node or not node.absolute_path then
    print("No valid node under cursor")
    return
  end

  if node.type == "directory" then
    print("Changing directory to: " .. node.absolute_path)
    vim.cmd("cd " .. node.absolute_path)
  else
    print("Opening file: " .. node.absolute_path)
    vim.cmd("edit " .. node.absolute_path)
  end
end

function keymaps()
  vim.keymap.set("n", "<C-e>", api.tree.toggle, { noremap = true, silent = true })
  vim.keymap.set("n", "<CR>", changeDir, { noremap = true, silent = true })
end

vim.keymap.set("n", "<C-e>", api.tree.toggle, { noremap = true, silent = true })
-- OR setup with some options
require("nvim-tree").setup({
  on_attach = keymaps,
  sync_root_with_cwd = true,
  update_cwd = true, 
  sort = {
    sorter = "case_sensitive",
  },
  view = {

  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
