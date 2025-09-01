---@type barbar.config.options
local opts = {
  auto_hide = false,
  exclude_ft = {},
  exclude_name = {},
  ---@type string "left" | "previous" | "right"
  focus_on_close = "left",
  hide = {
    extensions = false,
    inactive = false,
  },
  icons = {
    buffer_index = false,
    buffer_number = false,
    button = "",
    gitsigns = {
      added = {
        enabled = false,
      },
      changed = {
        enabled = false,
      },
      deleted = {
        enabled = false,
      },
    },
    separator = {
      left = "▎",
      right = "",
    },
    modified = {
      button = "●",
    },
    pinned = {
      button = "",
      filename = true,
    },
    ---@type string "default" | "powerline" | "slanted"
    preset = "powerline",
    alternate = {
      filetype = {
        enabled = false,
      },
    },
    current = {
      buffer_index = true,
    },
    inactive = {
      button = "×",
    },
    visible = {
      modified = {
        buffer_number = false,
      },
    },
  },
}

return opts
