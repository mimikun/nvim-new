---@type LazySpec
local spec = {
  "hisbaan/supertab.nvim",
  lazy = false,
  keys = require("plugins.supertab-nvim.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.supertab-nvim.dependencies"),
  config = function()
    require("supertab").setup(require("plugins.supertab-nvim.opts"))
  end,
  cond = false,
  enabled = false,
}

return spec
