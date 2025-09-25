---@type LazySpec
local spec = {
  "rvaccone/wind.nvim",
  --lazy = false,
  keys = require("plugins.wind-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.wind-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
