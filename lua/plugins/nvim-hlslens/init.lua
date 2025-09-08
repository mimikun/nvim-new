---@type LazySpec
local spec = {
  "kevinhwang91/nvim-hlslens",
  --lazy = false,
  cmd = require("plugins.nvim-hlslens.cmds"),
  --keys = require("plugins.nvim-hlslens.keys"),
  event = "VeryLazy",
  dependencies = require("plugins.nvim-hlslens.dependencies"),
  config = function()
    require("hlslens").setup(require("plugins.nvim-hlslens.opts"))
    --require("scrollbar.handlers.search").setup()
  end,
  --cond = false,
  --enabled = false,
}

return spec
