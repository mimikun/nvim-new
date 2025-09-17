---@type LazySpec
local spec = {
  "leoluz/nvim-dap-go",
  --lazy = false,
  ft = { "go" },
  keys = require("plugins.nvim-dap-go.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.nvim-dap-go.dependencies"),
  opts = require("plugins.nvim-dap-go.opts"),
  --cond = false,
  --enabled = false,
}

return spec
