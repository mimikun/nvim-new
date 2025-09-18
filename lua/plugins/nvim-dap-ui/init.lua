---@type LazySpec
local spec = {
  "rcarriga/nvim-dap-ui",
  --lazy = false,
  --event = "VeryLazy",
  dependencies = require("plugins.nvim-dap-ui.dependencies"),
  opts = require("plugins.nvim-dap-ui.opts"),
  cond = false,
  enabled = false,
}

return spec
