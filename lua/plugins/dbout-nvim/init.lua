---@type LazySpec
local spec = {
  "zongben/dbout.nvim",
  build = "npm install",
  --lazy = false,
  cmd = "Dbout",
  --event = "VeryLazy",
  dependencies = require("plugins.dbout-nvim.dependencies"),
  opts = require("plugins.dbout-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
