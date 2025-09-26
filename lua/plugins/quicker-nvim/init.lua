---@type LazySpec
local spec = {
  "stevearc/quicker.nvim",
  --lazy = false,
  ft = { "qf" },
  keys = require("plugins.quicker-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.quicker-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
