---@type LazySpec
local spec = {
  "mcauley-penney/visual-whitespace.nvim",
  --lazy = false,
  keys = require("plugins.visual-whitespace-nvim.keys"),
  event = "ModeChanged *:[vV\22]",
  opts = require("plugins.visual-whitespace-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
