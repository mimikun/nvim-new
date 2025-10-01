---@type LazySpec
local spec = {
  "zerochae/endpoint.nvim",
  --lazy = false,
  cmd = require("plugins.endpoint-nvim.cmds"),
  dependencies = require("plugins.endpoint-nvim.dependencies"),
  opts = require("plugins.endpoint-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
