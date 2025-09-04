---@type LazySpec
local spec = {
  "danielfalk/smart-open.nvim",
  --lazy = false,
  keys = require("plugins.smart-open-nvim.keys"),
  dependencies = require("plugins.smart-open-nvim.dependencies"),
  config = function()
    require("telescope").load_extension("smart_open")
  end,
  --cond = false,
  --enabled = false,
}

return spec
