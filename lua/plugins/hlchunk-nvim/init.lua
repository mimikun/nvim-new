---@type LazySpec
local spec = {
  "shellRaining/hlchunk.nvim",
  --lazy = false,
  cmd = require("plugins.hlchunk-nvim.cmds"),
  event = require("plugins.hlchunk-nvim.events"),
  opts = require("plugins.hlchunk-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
