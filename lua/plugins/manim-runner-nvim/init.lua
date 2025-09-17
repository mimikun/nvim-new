---@type LazySpec
local spec = {
  "ahmeds0s/manim_runner.nvim",
  --lazy = false,
  keys = require("plugins.manim-runner-nvim.keys"),
  dependencies = require("plugins.manim-runner-nvim.dependencies"),
  cond = false,
  enabled = false,
}

return spec
