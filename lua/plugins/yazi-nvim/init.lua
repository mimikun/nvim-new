---@type LazySpec
local spec = {
  "mikavilpas/yazi.nvim",
  --version = "*",
  --lazy = false,
  cmd = "Yazi",
  keys = require("plugins.yazi-nvim.keys"),
  event = "VeryLazy",
  dependencies = require("plugins.yazi-nvim.dependencies"),
  init = function()
    vim.g.loaded_netrwPlugin = 1
  end,
  config = function()
    require("yazi").setup(require("plugins.yazi-nvim.opts"))
  end,
  cond = false,
  enabled = false,
}

return spec
