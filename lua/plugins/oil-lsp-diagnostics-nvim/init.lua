---@type LazySpec
local spec = {
  "JezerM/oil-lsp-diagnostics.nvim",
  --lazy = false,
  ft = "oil",
  --event = "VeryLazy",
  dependencies = { "stevearc/oil.nvim" },
  opts = require("plugins.oil-lsp-diagnostics-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
