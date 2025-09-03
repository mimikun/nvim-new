---@type LazySpec
local spec = {
  "hat0uma/csvview.nvim",
  --lazy = false,
  ft = require("plugins.csvview-nvim.ft"),
  cmd = require("plugins.csvview-nvim.cmds"),
  opts = {},
  --cond = false,
  --enabled = false,
}

return spec
