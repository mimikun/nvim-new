---@type LazySpec
local spec = {
  "vyfor/cord.nvim",
  --lazy = false,
  build = ":Cord update",
  cmd = "Cord",
  event = "VeryLazy",
  opts = require("plugins.cord-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
