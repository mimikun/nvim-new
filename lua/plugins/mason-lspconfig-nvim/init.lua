---@type LazySpec
local spec = {
  "mason-org/mason-lspconfig.nvim",
  --lazy = false,
  cmd = require("plugins.mason-lspconfig-nvim.cmds"),
  event = "VeryLazy",
  dependencies = require("plugins.mason-lspconfig-nvim.dependencies"),
  opts = require("plugins.mason-lspconfig-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
