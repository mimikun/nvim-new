---@type LazySpec
local spec = {
  "pwntester/octo.nvim",
  --lazy = false,
  cmd = "Octo",
  dependencies = require("plugins.octo-nvim.dependencies"),
  opts = require("plugins.octo-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
