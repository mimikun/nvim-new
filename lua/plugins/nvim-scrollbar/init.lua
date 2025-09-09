---@type LazySpec
local spec = {
  "petertriho/nvim-scrollbar",
  --lazy = false,
  cmd = require("plugins.nvim-scrollbar.cmds"),
  event = "VeryLazy",
  dependencies = require("plugins.nvim-scrollbar.dependencies"),
  opts = require("plugins.nvim-scrollbar.opts"),
  --cond = false,
  --enabled = false,
}

return spec
