---@type LazySpec
local spec = {
  "stevearc/oil.nvim",
  lazy = false,
  cmd = "Oil",
  keys = require("plugins.oil-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = require("plugins.oil-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
