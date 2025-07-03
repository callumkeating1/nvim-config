function createterm()
  local buf = vim.api.nvim_create_buf(false, true)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = 80,
    height = 20,
    row = 10,
    col = 10,
    style = 'minimal',
    border = 'rounded',
    title = 'Terminal',
  })

  vim.fn.termopen({ vim.o.shell, "--login", "-i" }, {
    on_exit = function()
      if vim.api.nvim_win_is_valid(win) then
        vim.api.nvim_win_close(win, true)
      end
    end
  })

  vim.cmd("startinsert")

  vim.api.nvim_buf_set_keymap(buf, 't', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
end
function toggleterm()
  local term_buf = vim.fn.bufnr("term://*")
  if term_buf == -1 then
    return
  else
    if vim.api.nvim_buf_is_valid(term_buf) then
      vim.api.nvim_set_current_buf(term_buf)
    else
      createterm()
    end
  end
end
return {
  createterm = createterm,
  toggleterm = toggleterm,
}
