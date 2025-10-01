---@type LazySpec
local spec = {
  "zbirenbaum/copilot.lua",
  --lazy = false,
  cmd = "Copilot",
  event = "InsertEnter",
  dependencies = { "copilotlsp-nvim/copilot-lsp" },
  opts = require("plugins.copilot-lua.opts"),
  cond = false,
  enabled = false,
}

return spec
