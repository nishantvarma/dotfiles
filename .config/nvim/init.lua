vim.cmd("source $HOME/.unified/.unifiedrc")
vim.cmd("source $HOME/.config/nvim/nvim.vim")

local status, module = pcall(require, "oil")
if status then
  require("oil").setup()
else
  print("skipping package oil")
end
