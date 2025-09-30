---@type LazySpec
local spec = {
  "blaze-d83/snipbrowzurr.nvim",
  --lazy = false,
  cmd = "LuaSnipList",
  keys = require("plugins.snipbrowzurr-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.snipbrowzurr-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
