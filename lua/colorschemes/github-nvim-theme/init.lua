---@type LazySpec
local spec = {
  "projekt0n/github-nvim-theme",
  name = "github-theme",
  --lazy = false,
  cmd = require("colorschemes.github-nvim-theme.cmds"),
  opts = require("colorschemes.github-nvim-theme.opts"),
  priority = 1000,
  --cond = false,
  --enabled = false,
}

return spec
