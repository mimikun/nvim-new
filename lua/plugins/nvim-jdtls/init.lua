---@type LazySpec
local spec = {
  "mfussenegger/nvim-jdtls",
  --lazy = false,
  ft = { "java" },
  cmd = require("plugins.nvim-jdtls.cmds"),
  keys = require("plugins.nvim-jdtls.keys"),
  opts = {},
  cond = false,
  enabled = false,
}

return spec
