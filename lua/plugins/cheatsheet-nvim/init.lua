---@type LazySpec
local spec = {
  "sudormrfbin/cheatsheet.nvim",
  --lazy = false,
  cmd = require("plugins.cheatsheet-nvim.cmds"),
  dependencies = require("plugins.cheatsheet-nvim.dependencies"),
  opts = {},
  --cond = false,
  --enabled = false,
}

return spec
