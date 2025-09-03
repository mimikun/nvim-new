---@type LazySpec
local spec = {
  "kevinhwang91/nvim-hlslens",
  --lazy = false,
  cmd = require("plugins.nvim-hlslens.cmds"),
  --keys = require("plugins.nvim-hlslens.keys"),
  event = "VeryLazy",
  dependencies = { "kevinhwang91/nvim-ufo" },
  opts = require("plugins.nvim-hlslens.opts"),
  --cond = false,
  --enabled = false,
}

return spec
