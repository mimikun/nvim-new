---@type LazySpec
local spec = {
  "skanehira/github-actions.nvim",
  --lazy = false,
  ft = { "yaml" },
  --event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = require("plugins.github-actions-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
