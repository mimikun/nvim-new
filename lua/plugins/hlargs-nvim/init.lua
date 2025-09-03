---@type LazySpec
local spec = {
  "m-demare/hlargs.nvim",
  --lazy = false,
  event = "VeryLazy",
  opts = require("plugins.hlargs-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
