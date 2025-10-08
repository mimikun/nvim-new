---@type LazySpec
local spec = {
  "cenk1cenk2/schema-companion.nvim",
  --lazy = false,
  --event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = require("plugins.schema-companion-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
