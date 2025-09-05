---@type DiffviewConfig
local opts = {
  diff_binaries = false,
  enhanced_diff_hl = false,
  icons = {
    folder_closed = "",
    folder_open = "",
  },
  signs = {
    fold_closed = "",
    fold_open = "",
    done = "✓",
  },
  view = {
    default = {
      disable_diagnostics = false,
      winbar_info = false,
    },
    file_history = {
      disable_diagnostics = false,
      winbar_info = false,
    },
  },
  file_history_panel = {
    log_options = {
      ---@type ConfigLogOptions
      git = {
        single_file = {
          diff_merges = "combined",
          follow = true,
        },
      },
    },
  },
}

return opts
