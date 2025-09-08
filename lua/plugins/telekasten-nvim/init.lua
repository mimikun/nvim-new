---@type LazySpec
local spec = {
  "renerocksai/telekasten.nvim",
  --lazy = false,
  --ft = "",
  cmd = "Telekasten",
  keys = require("plugins.telekasten-nvim.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.telekasten-nvim.dependencies"),
  opts = require("plugins.telekasten-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
