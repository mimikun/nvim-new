---@type WindConfig
local opts = {
  ---@type WindWindowsConfig
  windows = {
    excluded_filetypes = {
      "help",
      "neo-tree",
    },
    index_help_windows = false,
    max_windows = 9,
    zero_based_indexing = false,
    notify = true,
  },

  ---@type clipboard
  clipboard = {
    notify = true,
    ---@type WindClipboardAIConfig
    ai = {
      separator = "\n",
      include_filetype = true,
      include_line_count = true,
      include_path = true,
    },
  },
}

return opts
