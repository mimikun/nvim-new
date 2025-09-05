---@type LazySpec
local spec = {
  "gbprod/substitute.nvim",
  --lazy = false,
  keys = require("plugins.substitute-nvim.keys"),
  dependencies = { "gbprod/yanky.nvim" },
  opts = require("plugins.substitute-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
