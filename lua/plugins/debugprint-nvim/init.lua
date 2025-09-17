---@type LazySpec
local spec = {
  "andrewferrier/debugprint.nvim",
  --version = "*",
  lazy = false,
  cmd = "Debugprint",
  dependencies = require("plugins.debugprint-nvim.dependencies"),
  opts = require("plugins.debugprint-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
