---@type LazySpec
local spec = {
  "rcarriga/nvim-notify",
  --lazy = false,
  cmd = require("plugins.nvim-notify.cmds"),
  opts = require("plugins.nvim-notify.opts"),
  --cond = false,
  --enabled = false,
}

return spec
