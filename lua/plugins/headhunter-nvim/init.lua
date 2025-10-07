---@type LazySpec
local spec = {
  "StackInTheWild/headhunter.nvim",
  --lazy = false,
  cmd = require("plugins.headhunter-nvim.cmds"),
  keys = require("plugins.headhunter-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.headhunter-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
