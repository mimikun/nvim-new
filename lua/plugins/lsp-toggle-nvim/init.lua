---@type LazySpec
local spec = {
  "NeoSahadeo/lsp-toggle.nvim",
  --lazy = false,
  cmd = require("plugins.lsp-toggle-nvim.cmds"),
  --event = "VeryLazy",
  opts = require("plugins.lsp-toggle-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
