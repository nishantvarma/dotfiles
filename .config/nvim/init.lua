vim.cmd("source $HOME/.unified/.unifiedrc")
vim.cmd("source $HOME/.config/nvim/nvim.vim")

local function package(name, opts)
    local status, module = pcall(require, name)
    if status then
        module.setup(opts or {})
    else
        print("skipping package " .. name)
    end
end

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
package("oil")
package("outline")
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
