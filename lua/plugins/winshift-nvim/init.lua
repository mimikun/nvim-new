---@type LazySpec
local spec = {
  "sindrets/winshift.nvim",
  --lazy = false,
  cmd = "WinShift",
  keys = require("plugins.winshift-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.winshift-nvim.opts"),
  config = function() end,
  cond = false,
  enabled = false,
}

return spec
