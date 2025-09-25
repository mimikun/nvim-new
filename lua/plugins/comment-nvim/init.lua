---@type LazySpec
local spec = {
  "numToStr/Comment.nvim",
  --lazy = false,
  --event = "VeryLazy",
  opts = require("plugins.comment-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
