---@type LazySpec
local spec = {
  "akinsho/git-conflict.nvim",
  --version = "*",
  --lazy = false,
  cmd = require("plugins.git-conflict-nvim.cmds"),
  keys = require("plugins.git-conflict-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.git-conflict-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
