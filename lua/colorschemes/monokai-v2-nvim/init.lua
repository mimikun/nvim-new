---@type LazySpec
local spec = {
  "khoido2003/monokai-v2.nvim",
  --lazy = false,
  cmd = require("colorschemes.monokai-v2-nvim.cmds"),
  opts = require("colorschemes.monokai-v2-nvim.opts"),
  priority = 1000,
  --cond = false,
  --enabled = false,
}

return spec
