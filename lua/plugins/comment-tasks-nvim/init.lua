---@type LazySpec
local spec = {
  "georgeharker/comment-tasks.nvim",
  --lazy = false,
  cmd = require("plugins.comment-tasks-nvim.cmds"),
  keys = require("plugins.comment-tasks-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = require("plugins.comment-tasks-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
