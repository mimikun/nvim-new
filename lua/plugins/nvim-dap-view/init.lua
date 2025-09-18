---@type LazySpec
local spec = {
  "igorlfs/nvim-dap-view",
  --lazy = false,
  cmd = require("plugins.nvim-dap-view.cmds"),
  --event = "VeryLazy",
  dependencies = { "mfussenegger/nvim-dap" },
  opts = require("plugins.nvim-dap-view.opts"),
  cond = false,
  enabled = false,
}

return spec
