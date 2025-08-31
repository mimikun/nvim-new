---@type LazySpec
local spec = {
  "thesimonho/kanagawa-paper.nvim",
  --lazy = false,
  cmd = "KanagawaPaperCache",
  opts = require("colorschemes.kanagawa-paper-nvim.opts"),
  priority = 1000,
  --cond = false,
  --enabled = false,
}

return spec
