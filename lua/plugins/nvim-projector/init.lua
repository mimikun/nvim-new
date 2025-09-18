---@type LazySpec
local spec = {
  "kndndrj/nvim-projector",
  --lazy = false,
  cmd = "Projector",
  --event = "VeryLazy",
  dependencies = require("plugins.nvim-projector.dependencies"),
  config = function()
    require("projector").setup(require("plugins.nvim-projector.opts"))
  end,
  cond = false,
  enabled = false,
}

return spec
