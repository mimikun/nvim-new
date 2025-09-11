---@type LazySpec
local spec = {
  "mistweaverco/kulala.nvim",
  --lazy = false,
  ft = require("plugins.kulala-nvim.ft"),
  keys = require("plugins.kulala-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = require("plugins.kulala-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
