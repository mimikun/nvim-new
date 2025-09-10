---@type LazySpec
local spec = {
  "kndndrj/nvim-dbee",
  --build = require("plugins.nvim-dbee.builds"),
  --lazy = false,
  cmd = "Dbee",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = require("plugins.nvim-dbee.opts"),
  cond = false,
  enabled = false,
}

return spec
