---@type LazySpec
local spec = {
  "kitallen23/conduit.nvim",
  --lazy = false,
  keys = require("plugins.conduit-nvim.keys"),
  event = "InsertEnter",
  dependencies = require("plugins.conduit-nvim.dependencies"),
  config = function()
    vim.g.conduit_opts = require("plugins.conduit-nvim.opts")
  end,
  cond = false,
  enabled = false,
}

return spec
