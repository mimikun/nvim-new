---@type LazySpec
local spec = {
  "mvllow/modes.nvim",
  --lazy = false,
  event = "VeryLazy",
  opts = require("plugins.modes-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
