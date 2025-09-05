---@type LazySpec
local spec = {
  "nvim-lualine/lualine.nvim",
  --lazy = false,
  cmd = require("plugins.lualine-nvim.cmds"),
  --keys = "",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  --init = function()
  --    INIT
  --end,
  config = function()
    require("lualine").setup(require("plugins.lualine-nvim.opts"))
  end,
  --cond = false,
  --enabled = false,
}

return spec
