---@type LazySpec
local spec = {
  "mfussenegger/nvim-dap",
  --lazy = false,
  cmd = require("plugins.nvim-dap.cmds"),
  keys = require("plugins.nvim-dap.keys"),
  event = "VeryLazy",
  dependencies = require("plugins.nvim-dap.dependencies"),
  config = function()
    require("telescope").load_extension("dap")
  end,
  --cond = false,
  --enabled = false,
}

return spec
