---@type LazySpec
local spec = {
  "isakbm/gitgraph.nvim",
  --lazy = false,
  keys = require("plugins.gitgraph-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "sindrets/diffview.nvim" },
  opts = require("plugins.gitgraph-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
