---@type LazySpec
local spec = {
  "aserowy/tmux.nvim",
  --lazy = false,
  --event = "VeryLazy",
  opts = require("plugins.tmux-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
