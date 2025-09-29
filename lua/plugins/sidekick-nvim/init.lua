---@type LazySpec
local spec = {
  "folke/sidekick.nvim",
  --lazy = false,
  cmd = "LspCopilotSignIn",
  keys = require("plugins.sidekick-nvim.keys"),
  opts = require("plugins.sidekick-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
