---@type LazySpec
local spec = {
  "pmizio/typescript-tools.nvim",
  --lazy = false,
  --ft = require("plugins.typescript-tools-nvim.ft"),
  cmd = require("plugins.typescript-tools-nvim.cmds"),
  event = "VeryLazy",
  dependencies = require("plugins.typescript-tools-nvim.dependencies"),
  config = function()
    require("typescript-tools").setup(require("plugins.typescript-tools-nvim.opts"))
  end,
  cond = false,
  enabled = false,
}

return spec
