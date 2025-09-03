---@type LazySpec
local spec = {
  "xiyaowong/nvim-cursorword",
  --lazy = false,
  cmd = require("plugins.nvim-cursorword.cmds"),
  event = "VeryLazy",
  init = function()
    vim.g.cursorword_disable_filetypes = {}
    vim.g.cursorword_disable_at_startup = true
    vim.g.cursorword_max_width = 50
    vim.g.cursorword_min_width = 3
  end,
  --cond = false,
  --enabled = false,
}

return spec
