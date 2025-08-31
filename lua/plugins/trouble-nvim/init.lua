---@type LazySpec
local spec = {
  "folke/trouble.nvim",
  --lazy = false,
  cmd = "Trouble",
  keys = require("plugins.trouble-nvim.keys"),
  dependencies = require("plugins.trouble-nvim.dependencies"),
  opts = require("plugins.trouble-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
