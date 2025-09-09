---@type LazySpec
local spec = {
  "akinsho/bufferline.nvim",
  --lazy = false,
  cmd = require("plugins.bufferline-nvim.cmds"),
  keys = require("plugins.bufferline-nvim.keys"),
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup(require("plugins.bufferline-nvim.opts"))
  end,
  --cond = false,
  --enabled = false,
}

return spec
