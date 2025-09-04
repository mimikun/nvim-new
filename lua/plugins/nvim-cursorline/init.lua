---@type LazySpec
local spec = {
  "ya2s/nvim-cursorline",
  --lazy = false,
  event = "VeryLazy",
  opts = require("plugins.nvim-cursorline.opts"),
  --cond = false,
  --enabled = false,
}

return spec
