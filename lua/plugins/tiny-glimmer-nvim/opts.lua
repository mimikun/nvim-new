---@type table
local opts = {
  overwrite = {
    yank = {
      enabled = true,
      default_animation = "fade",
    },
    search = {
      enabled = false,
      default_animation = "pulse",
    },
    paste = {
      enabled = true,
      default_animation = "reverse_fade",
    },
    undo = {
      enabled = false,
      default_animation = "fade",
    },
    redo = {
      enabled = false,
      default_animation = "fade",
    },
  },
  support = {
    substitute = {
      enabled = false,
      default_animation = "fade",
    },
  },
  presets = {
    pulsar = {
      enabled = false,
      on_events = {
        "CursorMoved",
        "CmdlineEnter",
        "CmdlineLeave",
        "WinEnter",
        "BufEnter",
      },
      default_animation = {
        name = "fade",
      },
    },
  },
  hijack_ft_disabled = {
    "alpha",
    "snacks_dashboard",
    "snacks_picker_input",
  },
  virt_text = {
    priority = 2048,
  },
}

return opts
