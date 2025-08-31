---@type LazySpec
local spec = {
  "scottmckendry/cyberdream.nvim",
  --lazy = false,
  cmd = require("colorschemes.cyberdream-nvim.cmds"),
  opts = require("colorschemes.cyberdream-nvim.opts"),
  priority = 1000,
  --cond = false,
  --enabled = false,
}

return spec
