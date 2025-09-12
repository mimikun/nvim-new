---@type LazySpec
local spec = {
  "ravitemer/mcphub.nvim",
  build = require("plugins.mcphub-nvim.builds").from_global,
  --lazy = false,
  cmd = "MCPHub",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = require("plugins.mcphub-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
