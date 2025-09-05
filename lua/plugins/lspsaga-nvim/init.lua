---@type LazySpec
local spec = {
  "nvimdev/lspsaga.nvim",
  --lazy = false,
  cmd = "Lspsaga",
  event = "LspAttach",
  dependencies = require("plugins.lspsaga-nvim.dependencies"),
  opts = require("plugins.lspsaga-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
