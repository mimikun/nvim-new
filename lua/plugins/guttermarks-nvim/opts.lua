---@type guttermarks.Config
local opts = {
  local_mark = {
    enabled = true,
    sign = "▶",
    priority = 10,
  },
  global_mark = {
    enabled = true,
    sign = "▲",
    priority = 11,
  },
  ---@type guttermarks.SpecialMarkConfig
  special_mark = {
    enabled = true,
    sign = "●",
    marks = {
      "'",
      "^",
      ".",
      "[",
      "]",
      "<",
      ">",
      '"',
      "`",
      '"',
      "0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
    },
    priority = 10,
  },
  autocmd_triggers = {
    "BufEnter",
    "BufWritePost",
    "TextChanged",
    "TextChangedI",
  },
  excluded_filetypes = {
    "NvimTree",
    "",
  },
  excluded_buftypes = {
    "terminal",
    "prompt",
    "quickfix",
  },
}

return opts
