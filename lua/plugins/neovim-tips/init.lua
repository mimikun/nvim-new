---@type LazySpec
local spec = {
  "saxon1964/neovim-tips",
  --lazy = false,
  cmd = require("plugins.neovim-tips.cmds"),
  keys = require("plugins.neovim-tips.keys"),
  event = "VeryLazy",
  dependencies = require("plugins.neovim-tips.dependencies"),
  opts = require("plugins.neovim-tips.opts"),
  --cond = false,
  --enabled = false,
}

return spec
