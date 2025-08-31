---@type LazySpec
local spec = {
  "folke/noice.nvim",
  --lazy = false,
  cmd = require("plugins.noice-nvim.cmds"),
  event = "VeryLazy",
  dependencies = require("plugins.noice-nvim.dependencies"),
  opts = require("plugins.noice-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
