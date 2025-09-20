---@type LazySpec
local spec = {
  "danymat/neogen",
  --version = "*",
  --lazy = false,
  cmd = "Neogen",
  keys = require("plugins.neogen.keys"),
  --event = "VeryLazy",
  opts = require("plugins.neogen.opts"),
  cond = false,
  enabled = false,
}

return spec
