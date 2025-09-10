---@type LazySpec
local spec = {
  "mistricky/codesnap.nvim",
  build = require("plugins.codesnap-nvim.builds").two,
  --lazy = false,
  cmd = require("plugins.codesnap-nvim.cmds"),
  keys = require("plugins.codesnap-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.codesnap-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
