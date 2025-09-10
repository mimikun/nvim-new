---@type LazySpec
local spec = {
  "f-person/git-blame.nvim",
  --lazy = false,
  cmd = require("plugins.git-blame-nvim.cmds"),
  --event = "VeryLazy",
  opts = require("plugins.git-blame-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
