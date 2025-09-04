---@type LazySpec
local spec = {
  "gbprod/yanky.nvim",
  --lazy = false,
  cmd = require("plugins.yanky-nvim.cmds"),
  keys = require("plugins.yanky-nvim.keys"),
  event = "VeryLazy",
  dependencies = require("plugins.yanky-nvim.dependencies"),
  config = function()
    require("yanky").setup(require("plugins.yanky-nvim.opts"))
    require("telescope").load_extension("yank_history")
  end,
  --cond = false,
  --enabled = false,
}

return spec
