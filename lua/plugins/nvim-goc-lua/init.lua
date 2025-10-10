---@type LazySpec
local spec = {
  "rafaelsq/nvim-goc.lua",
  --lazy = false,
  ft = { "go" },
  keys = require("plugins.nvim-goc-lua.keys"),
  --event = "VeryLazy",
  init = function()
    vim.opt.switchbuf = "useopen"
  end,
  opts = require("plugins.nvim-goc-lua.opts"),
  cond = false,
  enabled = false,
}

return spec
