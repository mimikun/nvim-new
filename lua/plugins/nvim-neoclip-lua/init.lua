---@type LazySpec
local spec = {
  "AckslD/nvim-neoclip.lua",
  --lazy = false,
  --event = "VeryLazy",
  dependencies = require("plugins.nvim-neoclip-lua.dependencies"),
  config = function()
    require("neoclip").setup(require("plugins.nvim-neoclip-lua.opts"))
    require("telescope").load_extension("neoclip")
  end,
  cond = false,
  enabled = false,
}

return spec
