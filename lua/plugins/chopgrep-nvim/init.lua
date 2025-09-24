---@type LazySpec
local spec = {
  --lazy = false,
  "sirasagi62/chopgrep.nvim",
  cmd = require("plugins.chopgrep-nvim.cmds"),
  --event = "VeryLazy",
  dependencies = require("plugins.chopgrep-nvim.dependencies"),
  cond = false,
  enabled = false,
}

return spec
