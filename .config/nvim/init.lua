vim.cmd("source $HOME/.unified/.unifiedrc")
vim.cmd("source $HOME/.config/nvim/nvim.vim")

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"

function execute()
  local filetype = vim.bo.filetype

  local filetype_commands = {
    markdown = ":terminal mdcat -p %"
  }

  if filetype_commands[filetype] then
    vim.cmd(filetype_commands[filetype])
  else
    vim.cmd(":terminal %")
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
