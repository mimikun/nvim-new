---@type SmoothCursorConfig
local opts = {
  cursor = "",
  fancy = {
    enable = false,
    head = { cursor = "▷" },
    body = {
      { cursor = "󰝥" },
      { cursor = "󰝥" },
      { cursor = "●" },
      { cursor = "●" },
      { cursor = "•" },
      { cursor = "." },
      { cursor = "." },
    },
    tail = { cursor = nil },
  },
  matrix = {
    head = {
      --cursor = require("smoothcursor.matrix_chars"),
    },
    body = {
      length = 6,
      --cursor = require("smoothcursor.matrix_chars"),
    },
    tail = { cursor = nil },
    unstop = false,
  },
  flyin_effect = nil,
  intervals = 35,
  timeout = 3000,
  ---@type "default" | "exp" | "matrix"
  type = "default",
  threshold = 3,
  max_threshold = nil,
  speed = 25,
  priority = 10,
  disable_float_win = false,
  enabled_filetypes = nil,
  disabled_filetypes = nil,
  ---@type "enter" | "leave" | nil
  show_last_positions = "leave",
}

return opts
