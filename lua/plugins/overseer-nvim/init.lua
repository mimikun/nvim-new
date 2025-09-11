---@type LazySpec
local spec = {
  "stevearc/overseer.nvim",
  --lazy = false,
  cmd = require("plugins.overseer-nvim.cmds"),
  opts = require("plugins.overseer-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
