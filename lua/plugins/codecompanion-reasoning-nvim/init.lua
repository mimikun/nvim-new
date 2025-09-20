---@type LazySpec
local spec = {
  "lazymaniac/codecompanion-reasoning.nvim",
  --lazy = false,
  cmd = require("plugins.codecompanion-reasoning-nvim.cmds"),
  --event = "VeryLazy",
  dependencies = { "olimorris/codecompanion.nvim" },
  opts = require("plugins.codecompanion-reasoning-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
