---@type LazySpec
local spec = {
  "lewis6991/gitsigns.nvim",
  --lazy = false,
  cmd = "Gitsigns",
  event = "BufEnter",
  opts = require("plugins.gitsigns-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
