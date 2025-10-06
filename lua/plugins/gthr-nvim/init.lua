---@type LazySpec
local spec = {
  "Adarsh-Roy/gthr.nvim",
  --version = "v0.1.0",
  --lazy = false,
  cmd = require("plugins.gthr-nvim.cmds"),
  keys = require("plugins.gthr-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.gthr-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
