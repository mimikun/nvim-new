---@type LazySpec
local spec = {
  "folke/flash.nvim",
  --lazy = false,
  keys = require("plugins.flash-nvim.keys"),
  event = "VeryLazy",
  opts = require("plugins.flash-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
