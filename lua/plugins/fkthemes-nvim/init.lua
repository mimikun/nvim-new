---@type LazySpec
local spec = {
  "flashcodes-themayankjha/Fkthemes.nvim",
  --lazy = false,
  cmd = require("plugins.fkthemes-nvim.cmds"),
  keys = require("plugins.fkthemes-nvim.keys"),
  event = "VeryLazy",
  dependencies = require("plugins.fkthemes-nvim.dependencies"),
  opts = require("plugins.fkthemes-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
