---@type LazySpec
local spec = {
  "jeniasaigak/goplay.nvim",
  --lazy = false,
  ft = { "go" },
  cmd = require("plugins.goplay-nvim.cmds"),
  keys = require("plugins.goplay-nvim.keys"),
  --event = "VeryLazy",
  config = function()
    require("goplay").setup(require("plugins.goplay-nvim.opts"))
  end,
  cond = false,
  enabled = false,
}

return spec
