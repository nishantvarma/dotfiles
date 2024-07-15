vim.cmd("source $HOME/.unified/.unifiedrc")
vim.cmd("source $HOME/.config/nvim/nvim.vim")

local function package(name)
  local status, module = pcall(require, name)
  if status then
    module.setup()
  else
    print("skipping package " .. name)
  end
end

package("oil")
package("outline")
package("telescope") -- needs plenary
