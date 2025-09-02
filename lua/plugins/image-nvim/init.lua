---@type LazySpec
local spec = {
  "3rd/image.nvim",
  --lazy = false,
  cmd = "ImageReport",
  event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = require("plugins.image-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
