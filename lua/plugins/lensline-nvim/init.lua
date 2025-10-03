---@type LazySpec
local spec = {
  "oribarilan/lensline.nvim",
  --branch = "release/2.x",
  --tag = "2.0.0",
  --lazy = false,
  cmd = require("plugins.lensline-nvim.cmds"),
  event = require("plugins.lensline-nvim.events"),
  opts = require("plugins.lensline-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
