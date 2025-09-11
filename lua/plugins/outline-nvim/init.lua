---@type LazySpec
local spec = {
  "hedyhli/outline.nvim",
  --lazy = false,
  cmd = require("plugins.outline-nvim.cmds"),
  keys = require("plugins.outline-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.outline-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
