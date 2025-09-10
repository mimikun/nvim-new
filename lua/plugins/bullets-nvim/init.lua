---@type LazySpec
local spec = {
  "kaymmm/bullets.nvim",
  --lazy = false,
  --ft = "",
  cmd = require("plugins.bullets-nvim.cmds"),
  --event = "VeryLazy",
  opts = require("plugins.bullets-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
