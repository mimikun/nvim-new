---@type LazySpec
local spec = {
  "nvim-zh/colorful-winsep.nvim",
  --lazy = false,
  cmd = "Winsep",
  event = "WinLeave",
  opts = require("plugins.colorful-winsep-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
