---@type LazySpec
local spec = {
  "catppuccin/nvim",
  name = "catppuccin",
  --lazy = false,
  cmd = require("colorschemes.catppuccin-nvim.cmds"),
  opts = require("colorschemes.catppuccin-nvim.opts"),
  priority = 1000,
  --cond = false,
  --enabled = false,
}

return spec
