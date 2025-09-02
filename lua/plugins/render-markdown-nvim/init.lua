---@type LazySpec
local spec = {
  "MeanderingProgrammer/render-markdown.nvim",
  --lazy = false,
  cmd = "RenderMarkdown",
  event = "VeryLazy",
  dependencies = require("plugins.render-markdown-nvim.dependencies"),
  opts = require("plugins.render-markdown-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
