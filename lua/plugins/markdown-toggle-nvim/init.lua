---@type LazySpec
local spec = {
  "roodolv/markdown-toggle.nvim",
  --lazy = false,
  ft = require("plugins.markdown-toggle-nvim.ft"),
  keys = require("plugins.markdown-toggle-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.markdown-toggle-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
