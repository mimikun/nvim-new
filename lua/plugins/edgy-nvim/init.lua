---@type LazySpec
local spec = {
  "folke/edgy.nvim",
  --lazy = false,
  event = "VeryLazy",
  init = function()
    vim.opt.laststatus = 3
    ---@type "splitkeep" | "screen" | "topline"
    vim.opt.splitkeep = "screen"
  end,
  opts = require("plugins.edgy-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
