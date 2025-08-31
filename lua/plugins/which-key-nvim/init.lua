---@type LazySpec
local spec = {
  "folke/which-key.nvim",
  --lazy = false,
  --cmd = "CMDNAME",
  keys = require("plugins.which-key-nvim.keys"),
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = require("plugins.which-key-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
