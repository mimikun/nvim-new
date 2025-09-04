---@type LazySpec
local spec = {
  "potamides/pantran.nvim",
  --lazy = false,
  cmd = "Pantran",
  keys = require("plugins.pantran-nvim.keys"),
  opts = require("plugins.pantran-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
