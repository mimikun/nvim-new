---@type LazySpec
local spec = {
  "laytan/cloak.nvim",
  --lazy = false,
  cmd = require("plugins.cloak-nvim.cmds"),
  --event = "VeryLazy",
  opts = require("plugins.cloak-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
