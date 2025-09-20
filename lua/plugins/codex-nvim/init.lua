---@type LazySpec
local spec = {
  "johnseth97/codex.nvim",
  --lazy = false,
  cmd = require("plugins.codex-nvim.cmds"),
  keys = require("plugins.codex-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.codex-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
