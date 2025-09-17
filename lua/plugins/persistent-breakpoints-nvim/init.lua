---@type LazySpec
local spec = {
  "Weissle/persistent-breakpoints.nvim",
  --lazy = false,
  cmd = require("plugins.persistent-breakpoints-nvim.cmds"),
  keys = require("plugins.persistent-breakpoints-nvim.keys"),
  event = require("plugins.persistent-breakpoints-nvim.events"),
  dependencies = { "mfussenegger/nvim-dap" },
  opts = require("plugins.persistent-breakpoints-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
