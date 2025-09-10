---@type LazySpec
local spec = {
  "efirlus/quickadd.nvim",
  --lazy = false,
  --ft = "",
  keys = require("plugins.quickadd-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = require("plugins.quickadd-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
