---@type LazySpec
local spec = {
  "folke/tokyonight.nvim",
  lazy = false,
  opts = require("colorschemes.tokyonight-nvim.opts"),
  priority = 1000,
  --cond = false,
  --enabled = false,
}

return spec
