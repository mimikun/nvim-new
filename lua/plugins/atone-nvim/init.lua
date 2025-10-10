---@type LazySpec
local spec = {
  "XXiaoA/atone.nvim",
  --lazy = false,
  cmd = "Atone",
  --event = "VeryLazy",
  opts = require("plugins.atone-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
