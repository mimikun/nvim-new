---@type LazySpec
local spec = {
  "flashcodes-themayankjha/Fknotes.nvim",
  --lazy = false,
  cmd = require("plugins.fknotes-nvim.cmds"),
  keys = require("plugins.fknotes-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = require("plugins.fknotes-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
