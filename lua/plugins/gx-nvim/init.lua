---@type LazySpec
local spec = {
  "chrishrb/gx.nvim",
  --lazy = false,
  cmd = "Browse",
  keys = require("plugins.gx-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  init = function()
    -- disable netrw gx
    vim.g.netrw_nogx = 1
  end,
  opts = require("plugins.gx-nvim.opts"),
  submodules = false,
  --cond = false,
  --enabled = false,
}

return spec
