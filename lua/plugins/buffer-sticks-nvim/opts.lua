---@type BufferSticksConfig
local opts = {
  ---@type "left" | "right"
  position = "right",
  width = 3,
  ---@type BufferSticksOffset
  offset = {
    x = 0,
    y = 0,
  },
  active_char = "──",
  inactive_char = " ─",
  transparent = true,
  winblend = 100,
  winblend = 100,
  ---@type BufferSticksFilter
  filter = {
    ---@type string[]
    filetypes = {
      "terminal",
      "NvimTree",
      "help",
      "qf",
      "neo-tree",
      "Trouble",
    },
    ---@type string[]
    names = {
      ".*%.git/.*",
      "^/tmp/.*",
    },
  },
}

return opts
