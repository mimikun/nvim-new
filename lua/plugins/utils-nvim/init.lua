---@type LazySpec
local spec = {
  "2kabhishek/utils.nvim",
  --lazy = false,
  cmd = "UtilsClearCache",
  dependencies = require("plugins.utils-nvim.dependencies"),
  --cond = false,
  --enabled = false,
}

return spec
