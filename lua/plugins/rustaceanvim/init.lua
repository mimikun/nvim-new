---@type LazySpec
local spec = {
  "mrcjkb/rustaceanvim",
  version = "^6",
  lazy = false,
  ft = { "rust" },
  cmd = require("plugins.rustaceanvim.cmds"),
  --event = "VeryLazy",
  dependencies = { "adaszko/tree_climber_rust.nvim" },
  init = function()
    vim.g.rustaceanvim = require("plugins.rustaceanvim.opts")
  end,
  --cond = false,
  --enabled = false,
}

return spec
