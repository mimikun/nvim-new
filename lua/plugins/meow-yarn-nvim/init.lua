---@type LazySpec
local spec = {
  "retran/meow.yarn.nvim",
  --lazy = false,
  cmd = "MeowYarn",
  keys = require("plugins.meow-yarn-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = require("plugins.meow-yarn-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
