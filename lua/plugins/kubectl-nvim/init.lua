---@type LazySpec
local spec = {
  "ramilito/kubectl.nvim",
  -- use a release tag to download pre-built binaries
  version = "2.*",
  -- build = 'cargo build --release',
  --lazy = false,
  cmd = require("plugins.kubectl-nvim.cmds"),
  keys = require("plugins.kubectl-nvim.keys"),
  dependencies = { "saghen/blink.download" },
  opts = require("plugins.kubectl-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
