---@type LazySpec
local spec = {
  "SmiteshP/nvim-navic",
  --lazy = false,
  event = "VeryLazy",
  dependencies = { "neovim/nvim-lspconfig" },
  opts = require("plugins.nvim-navic.opts"),
  cond = false,
  enabled = false,
}

return spec
