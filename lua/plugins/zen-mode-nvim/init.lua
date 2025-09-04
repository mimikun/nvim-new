---@type LazySpec
local spec = {
  "folke/zen-mode.nvim",
  --lazy = false,
  cmd = "ZenMode",
  opts = require("plugins.zen-mode-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
