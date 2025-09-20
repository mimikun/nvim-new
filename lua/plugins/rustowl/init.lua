---@type LazySpec
local spec = {
  "cordx56/rustowl",
  --lazy = false,
  build = "cargo binstall rustowl",
  --version = "*",
  cmd = "Rustowl",
  --event = "VeryLazy",
  opts = require("plugins.rustowl.opts"),
  cond = false,
  enabled = false,
}

return spec
