---@type LazySpec
local spec = {
  "Wansmer/treesj",
  --lazy = false,
  cmd = require("plugins.treesj.cmds"),
  --keys = require("plugins.treesj.keys"),
  event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = require("plugins.treesj.opts"),
  --cond = false,
  --enabled = false,
}

return spec
