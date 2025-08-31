---@type LazySpec
local spec = {
  "mason-org/mason.nvim",
  --lazy = false,
  cmd = require("plugins.mason-nvim.cmds"),
  event = "VeryLazy",
  opts = require("plugins.mason-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
