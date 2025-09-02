---@type LazySpec
local spec = {
  "coder/claudecode.nvim",
  --lazy = false,
  cmd = require("plugins.claudecode-nvim.cmds"),
  keys = require("plugins.claudecode-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "folke/snacks.nvim" },
  opts = require("plugins.claudecode-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
