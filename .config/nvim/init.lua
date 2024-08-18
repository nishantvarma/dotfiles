vim.cmd("source $HOME/.unified/.unifiedrc")
vim.cmd("source $HOME/.config/nvim/nvim.vim")

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"

function execute()
  local filename = vim.fn.expand("%")
  local filetype = vim.bo.filetype

  local commands = {
    markdown = {"msg", "launch", "--type", "overlay", "mdcat", "-p", filename}
  }

  local command = commands[filetype]

  if command then
    vim.fn.jobstart(command, {detach = true})
  else
    vim.fn.jobstart(
        {"msg", "launch", "bash", "-c", filename .. " && read"},
        {detach = true}
    )
  end
end

local function package(name, opts)
  local status, module = pcall(require, name)
  if status then
    module.setup(opts or {})
  else
    print("skipping package " .. name)
  end
end

package("aerial", {
  layout = {
    default_direction = "prefer_left"
  },
  autojump = true
})
package("nvim-tree", {
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false
      }
    }
  }
})
package("nvim-treesitter")
package("various-textobjs", {useDefaultKeymaps = true})
package("oil")
package("telescope", { -- needs plenary
  pickers = {
    find_files = {
      search_dirs = {".", "src"}
    },
    live_grep = {
      search_dirs = {".", "src"}
    }
  }
})
