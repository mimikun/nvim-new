---@type LazySpec
local spec = {
  "stevearc/aerial.nvim",
  --lazy = false,
  cmd = require("plugins.aerial-nvim.cmds"),
  keys = require("plugins.aerial-nvim.keys"),
  dependencies = require("plugins.aerial-nvim.dependencies"),
  config = function()
    require("aerial").setup(require("plugins.aerial-nvim.opts"))
    require("telescope").load_extension("aerial")
  end,
  cond = false,
  enabled = false,
}

return spec
