---@type LazySpec
local spec = {
  "NickvanDyke/opencode.nvim",
  --lazy = false,
  keys = require("plugins.opencode-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "folke/snacks.nvim" },
  config = function()
    vim.g.opencode_opts = require("plugins.opencode-nvim.opts")
    vim.opt.autoread = true
  end,
  cond = false,
  enabled = false,
}

return spec
