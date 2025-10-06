---@type LazySpec
local spec = {
  "zongben/dbout.nvim",
  build = "npm install",
  --lazy = false,
  cmd = "Dbout",
  --keys = require("plugins.dbout-nvim.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.dbout-nvim.dependencies"),
  opts = require("plugins.dbout-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
