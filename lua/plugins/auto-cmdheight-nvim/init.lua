---@type LazySpec
local spec = {
  "jake-stewart/auto-cmdheight.nvim",
  --lazy = false,
  event = "VeryLazy",
  opts = require("plugins.auto-cmdheight-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
