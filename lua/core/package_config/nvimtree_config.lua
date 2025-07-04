
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

function expandDir()
  local node = api.tree.get_node_under_cursor()
  if node then
    if node.type == "directory" then
      api.node.open.edit(node, { toggle = true })
    end
  end
end


function keymaps(bufnr)
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  vim.keymap.set("n", "<C-e>", api.tree.toggle, opts("Toggle NvimTree"))
  vim.keymap.set("n", "<CR>", changeDir, opts("Open file or cd"))
  vim.keymap.set("n", "<Tab>", expandDir,opts("Expand directory"))
  vim.keymap.set("n", " ", expandDir,opts("Expand directory"))
end

-- OR setup with some options
require("nvim-tree").setup({
  on_attach = keymaps,
  sync_root_with_cwd = true,
  update_cwd = true, 
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    side = "right",
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
