---@type LazySpec
local spec = {
  "nanotee/sqls.nvim",
  --lazy = false,
  ft = require("plugins.sqls-nvim.ft"),
  cmd = require("plugins.sqls-nvim.cmds"),
  --event = "VeryLazy",
  --opts = {},
  cond = false,
  enabled = false,
}

return spec
