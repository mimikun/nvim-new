---@type LazySpec
local spec = {
  "ahkohd/buffer-sticks.nvim",
  --lazy = false,
  cmd = "BufferSticks",
  opts = require("plugins.buffer-sticks-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
