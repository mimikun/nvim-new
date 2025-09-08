---@type LazySpec
local spec = {
  "refractalize/oil-git-status.nvim",
  --lazy = false,
  ft = "oil",
  --event = "VeryLazy",
  dependencies = { "stevearc/oil.nvim" },
  opts = require("plugins.oil-git-status-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
