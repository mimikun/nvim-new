---@type LazySpec
local spec = {
  "lukas-reineke/virt-column.nvim",
  --lazy = false,
  event = "VeryLazy",
  opts = require("plugins.virt-column-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
