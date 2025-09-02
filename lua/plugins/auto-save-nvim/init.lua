---@type LazySpec
local spec = {
  "okuuva/auto-save.nvim",
  --lazy = false,
  cmd = "ASToggle",
  --keys = require("plugins.auto-save-nvim.keys"),
  event = require("plugins.auto-save-nvim.events"),
  opts = require("plugins.auto-save-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
