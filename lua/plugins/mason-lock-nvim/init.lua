---@type LazySpec
local spec = {
  "zapling/mason-lock.nvim",
  --lazy = false,
  cmd = require("plugins.mason-lock-nvim.cmds"),
  opts = require("plugins.mason-lock-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
