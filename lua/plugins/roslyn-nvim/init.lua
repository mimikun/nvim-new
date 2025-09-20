---@type LazySpec
local spec = {
  "seblyng/roslyn.nvim",
  --lazy = false,
  ft = require("plugins.roslyn-nvim.ft"),
  cmd = "Roslyn",
  --event = "VeryLazy",
  dependencies = { "tris203/rzls.nvim" },
  opts = require("plugins.roslyn-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
