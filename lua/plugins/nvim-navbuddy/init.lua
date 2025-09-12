---@type LazySpec
local spec = {
  "hasansujon786/nvim-navbuddy",
  --lazy = false,
  cmd = "Navbuddy",
  event = "VeryLazy",
  dependencies = require("plugins.nvim-navbuddy.dependencies"),
  opts = require("plugins.nvim-navbuddy.opts"),
  cond = false,
  enabled = false,
}

return spec
