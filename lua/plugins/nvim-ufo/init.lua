---@type LazySpec
local spec = {
  "kevinhwang91/nvim-ufo",
  --lazy = false,
  cmd = require("plugins.nvim-ufo.cmds"),
  keys = require("plugins.nvim-ufo.keys"),
  event = "VeryLazy",
  dependencies = { "kevinhwang91/promise-async" },
  init = function()
    vim.o.foldcolumn = "1"
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
  end,
  opts = require("plugins.nvim-ufo.opts"),
  --cond = false,
  --enabled = false,
}

return spec
