---@type LazySpec
local spec = {
  "rachartier/tiny-glimmer.nvim",
  --lazy = false,
  cmd = "TinyGlimmer",
  event = "VeryLazy",
  opts = require("plugins.tiny-glimmer-nvim.opts"),
  priority = 10,
  --cond = false,
  --enabled = false,
}

return spec
