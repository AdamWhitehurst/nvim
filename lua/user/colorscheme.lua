vim.opt.background = "dark"
vim.g.everforest_background = 'hard'
vim.g.transparent_enabled = true
vim.g.catppuccin_flavour="mocha"

local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
