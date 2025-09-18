---@type LazySpec
local spec = {
  "theHamsta/nvim-dap-virtual-text",
  --lazy = false,
  --ft = require("plugins.nvim-dap-virtual-text.ft"),
  cmd = require("plugins.nvim-dap-virtual-text.cmds"),
  --keys = require("plugins.nvim-dap-virtual-text.keys"),
  --event = require("plugins.nvim-dap-virtual-text.events"),
  --event = "VeryLazy",
  dependencies = require("plugins.nvim-dap-virtual-text.dependencies"),
  opts = require("plugins.nvim-dap-virtual-text.opts"),
  cond = false,
  enabled = false,
}

return spec
