---@type LazySpec
local spec = {
  "jay-babu/mason-nvim-dap.nvim",
  --lazy = false,
  cmd = require("plugins.mason-nvim-dap-nvim.cmds"),
  --event = "VeryLazy",
  dependencies = require("plugins.mason-nvim-dap-nvim.dependencies"),
  config = function()
    require("mason-nvim-dap").setup(require("plugins.mason-nvim-dap-nvim.opts"))
  end,
  cond = false,
  enabled = false,
}

return spec
