---@type LazySpec
local spec = {
  "nvim-telescope/telescope-frecency.nvim",
  version = "*",
  --lazy = false,
  --event = "VeryLazy",
  dependencies = require("plugins.telescope-frecency-nvim.dependencies"),
  config = function()
    require("telescope").load_extension("frecency")
  end,
  cond = false,
  enabled = false,
}

return spec
