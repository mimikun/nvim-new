---@type LazySpec
local spec = {
  "marcocofano/excalidraw.nvim",
  --lazy = false,
  --ft = "",
  cmd = "Excalidraw",
  --event = "VeryLazy",
  opts = require("plugins.excalidraw-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
