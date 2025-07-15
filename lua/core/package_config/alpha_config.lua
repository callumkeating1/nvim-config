local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  [[   /|   /  \      /  -----    /\      /\]],
  [[  / |  /    \    /     |     /  \    /  \]],
  [[ /  | /      \  /      |    /    \  /    \]],
  [[/   |/        \/     ----- /      \/      \]],
}

dashboard.section.buttons.val = {
  dashboard.button("e", "  Open Explorer", "<CMD>NvimTreeToggle<CR>"),
  dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
  dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
  dashboard.button("q", "  Quit", ":qa<CR>"),
}

dashboard.section.footer.val = "Welcome to nvim"
dashboard.section.footer.opts.hl = "Type"
