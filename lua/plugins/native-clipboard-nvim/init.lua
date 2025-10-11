---@type LazySpec
local spec = {
  "frosthaven/native-clipboard.nvim",
  lazy = false,
  --event = "VeryLazy",
  opts = require("plugins.native-clipboard-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
