---@type LazySpec
local spec = {
  "hat0uma/prelive.nvim",
  --lazy = false,
  cmd = require("plugins.prelive-nvim.cmds"),
  --event = "VeryLazy",
  opts = require("plugins.prelive-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
