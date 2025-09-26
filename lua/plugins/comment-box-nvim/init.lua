---@type LazySpec
local spec = {
  "LudoPinelli/comment-box.nvim",
  --lazy = false,
  cmd = require("plugins.comment-box-nvim.cmds"),
  keys = require("plugins.comment-box-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.comment-box-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
