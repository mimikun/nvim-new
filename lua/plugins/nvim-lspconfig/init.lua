---@type LazySpec
local spec = {
  "neovim/nvim-lspconfig",
  --lazy = false,
  cmd = require("plugins.nvim-lspconfig.cmds"),
  event = "VeryLazy",
  dependencies = require("plugins.nvim-lspconfig.dependencies"),
  --dependencies = { "saghen/blink.cmp" },
  --opts = require("plugins.nvim-lspconfig.opts"),
  --config = function()
  --    INIT
  --end,
  --cond = false,
  --enabled = false,
}

return spec
