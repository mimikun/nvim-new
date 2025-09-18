---@type LazySpec
local spec = {
  "mimikun/spec-template",
  --lazy = false,
  keys = require("plugins.hover-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.hover-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
