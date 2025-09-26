---@type LazySpec
local spec = {
  "MagicDuck/grug-far.nvim",
  --lazy = false,
  cmd = require("plugins.grug-far-nvim.cmds"),
  --event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("grug-far").setup(require("plugins.grug-far-nvim.opts"))
  end,
  cond = false,
  enabled = false,
}

return spec
