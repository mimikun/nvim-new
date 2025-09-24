---@type LazySpec
local spec = {
  "erl-koenig/theme-hub.nvim",
  --lazy = false,
  cmd = "ThemeHub",
  --event = "VeryLazy",
  dependencies = require("plugins.theme-hub-nvim.dependencies"),
  config = function()
    require("theme-hub").setup(require("plugins.theme-hub-nvim.opts"))
    require("telescope").load_extension("ui-select")
  end,
  cond = false,
  enabled = false,
}

return spec
