---@type LazySpec
local spec = {
  "jaklimoff/github-actions.nvim",
  name = "alt-github-actions",
  --lazy = false,
  cmd = require("plugins.alt-github-actions-nvim.cmds"),
  keys = require("plugins.alt-github-actions-nvim.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.alt-github-actions-nvim.dependencies"),
  opts = require("plugins.alt-github-actions-nvim.opts"),
  cond = false,
  enabled = false,
  --dir = "",
  --url = "",
  --main = "",
}

return spec
