---@alias TelescopeLazy.Theme "dropdown" | "cursor" |"ivy"

---@type table
local opts = {
  extensions = {
    ---@module "telescope._extensions.lazy"
    ---@type TelescopeLazy.Config
    lazy = {
      ---@type TelescopeLazy.Theme
      theme = "ivy",
      show_icon = true,
      ---@type TelescopeLazy.Mappings
      mappings = {
        open_in_browser = "<C-o>",
        open_in_file_browser = "<M-b>",
        open_in_find_files = "<C-f>",
        open_in_live_grep = "<C-g>",
        open_in_terminal = "<C-t>",
        open_plugins_picker = "<C-b>",
        open_lazy_root_find_files = "<C-r>f",
        open_lazy_root_live_grep = "<C-r>g",
        change_cwd_to_plugin = "<C-c>d",
      },
      ---@type TelescopeLazy.ActionOpts
      actions_opts = {
        ---@type TelescopeLazy.ActionOpts
        open_in_browser = {
          auto_close = false,
        },
        ---@type TelescopeLazy.ActionOpts
        change_cwd_to_plugin = {
          auto_close = false,
        },
      },
      ---@type vim.api.keyset.win_config
      terminal_opts = {
        relative = "editor",
        style = "minimal",
        border = "rounded",
        title = "Telescope lazy",
        title_pos = "center",
        width = 0.5,
        height = 0.5,
      },
    },
  },
}

return opts
