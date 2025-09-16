---@type LazySpec
local spec = {
  "piersolenski/brewfile.nvim",
  --lazy = false,
  cmd = require("plugins.brewfile-nvim.cmds"),
  keys = require("plugins.brewfile-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.brewfile-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
