---@type LazySpec
local spec = {
  "folke/persistence.nvim",
  --lazy = false,
  keys = require("plugins.persistence-nvim.keys"),
  event = "BufReadPre",
  opts = require("plugins.persistence-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
