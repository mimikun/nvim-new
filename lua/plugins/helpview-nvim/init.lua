---@type LazySpec
local spec = {
  "OXY2DEV/helpview.nvim",
  branch = "dev",
  lazy = false,
  --ft = "",
  cmd = require("plugins.helpview-nvim.cmds"),
  --event = "VeryLazy",
  dependencies = require("plugins.helpview-nvim.dependencies"),
  opts = require("plugins.helpview-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
