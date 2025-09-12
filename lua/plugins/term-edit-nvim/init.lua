---@type LazySpec
local spec = {
  "chomosuke/term-edit.nvim",
  --version = "1.*",
  --lazy = false,
  event = "TermOpen",
  opts = require("plugins.term-edit-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
