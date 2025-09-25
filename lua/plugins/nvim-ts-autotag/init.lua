---@type LazySpec
local spec = {
  "windwp/nvim-ts-autotag",
  --lazy = false,
  event = require("plugins.nvim-ts-autotag.events"),
  --event = "VeryLazy",
  dependencies = { { "nvim-treesitter/nvim-treesitter", branch = "main" } },
  opts = require("plugins.nvim-ts-autotag.opts"),
  cond = false,
  enabled = false,
}

return spec
