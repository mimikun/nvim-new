---@type table
local opts = {
  show_in_active_only = false,
  folds = 1000,
  max_lines = false,
  hide_if_all_visible = false,
  throttle_ms = 100,
  handle = {
    text = " ",
    blend = 30,
  },
  marks = {
    Cursor = {
      text = "•",
      priority = 0,
    },
    Search = {
      text = {
        "-",
        "=",
      },
      priority = 1,
    },
    Error = {
      text = {
        "-",
        "=",
      },
      priority = 2,
    },
    Warn = {
      text = {
        "-",
        "=",
      },
      priority = 3,
    },
    Info = {
      text = {
        "-",
        "=",
      },
      priority = 4,
    },
    Hint = {
      text = {
        "-",
        "=",
      },
      priority = 5,
    },
    Misc = {
      text = {
        "-",
        "=",
      },
      priority = 6,
    },
    GitAdd = {
      text = "┆",
      priority = 7,
    },
    GitChange = {
      text = "┆",
      priority = 7,
    },
    GitDelete = {
      text = "▁",
      priority = 7,
    },
  },
  excluded_buftypes = {
    "terminal",
  },
  excluded_filetypes = {
    "blink-cmp-menu",
    "dropbar_menu",
    "dropbar_menu_fzf",
    "DressingInput",
    "cmp_docs",
    "cmp_menu",
    "noice",
    "prompt",
    "TelescopePrompt",
  },
  handlers = {
    gitsigns = true,
    search = true,
    ale = false,
  },
}

return opts
