---@type LazySpec
local spec = {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  --lazy = false,
  cmd = "Leet",
  dependencies = require("plugins.leetcode-nvim.dependencies"),
  opts = require("plugins.leetcode-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
