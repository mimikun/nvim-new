---@type LazySpec
local spec = {
  "akinsho/toggleterm.nvim",
  --version = "*",
  --lazy = false,
  cmd = require("plugins.toggleterm-nvim.cmds"),
  --event = "VeryLazy",
  opts = require("plugins.toggleterm-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
