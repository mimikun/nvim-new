---@type LazySpec
local spec = {
  "yus-works/csc.nvim",
  --lazy = false,
  cmd = "CSC",
  event = "VeryLazy",
  --dependencies = require("plugins.csc-nvim.dependencies"),
  config = function()
    require("csc").setup(require("plugins.csc-nvim.opts"))
  end,
  --cond = false,
  --enabled = false,
}

return spec
