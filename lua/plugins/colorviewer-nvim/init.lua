---@type LazySpec
local spec = {
  "Godswill-255/colorviewer.nvim",
  --lazy = false,
  cmd = "ShowColorBoxes",
  --event = "VeryLazy",
  opts = require("plugins.colorviewer-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
