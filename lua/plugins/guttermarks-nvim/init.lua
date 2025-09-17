---@type LazySpec
local spec = {
  "dimtion/guttermarks.nvim",
  --lazy = false,
  cmd = "GutterMarks",
  event = "VeryLazy",
  opts = require("plugins.guttermarks-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
