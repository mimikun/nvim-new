---@type HlChunk.UserConf
local opts = {
  chunk = {
    enable = true,
    notify = false,
    chars = {
      horizontal_line = "─",
      vertical_line = "│",
      left_top = "╭",
      left_bottom = "╰",
      right_arrow = ">",
    },
    textobject = "",
    exclude_filetypes = {
      aerial = true,
      dashboard = true,
    },
  },
  indent = {
    enable = true,
    notify = false,
    use_treesitter = false,
    filter_list = {},
    chars = {
      "│",
      "¦",
      "┆",
      "┊",
    },
    exclude_filetypes = {
      aerial = true,
      dashboard = true,
    },
  },
  line_num = {
    enable = true,
    notify = false,
    use_treesitter = false,
    exclude_filetypes = {
      aerial = true,
      dashboard = true,
    },
  },
  blank = {
    enable = true,
    notify = false,
    chars = {
      " ",
      "․",
      "⁚",
      "⁖",
      "⁘",
      "⁙",
    },
    exclude_filetypes = {
      aerial = true,
      dashboard = true,
    },
  },
}

return opts
