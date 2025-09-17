---@type LazySpec
local spec = {
  "folke/lazydev.nvim",
  --lazy = false,
  ft = "lua",
  cmd = "LazyDev",
  --event = "VeryLazy",
  dependencies = require("plugins.lazydev-nvim.dependencies"),
  opts = require("plugins.lazydev-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
