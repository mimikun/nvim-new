---@type LazySpec
local spec = {
  "chipsenkbeil/org-roam.nvim",
  --tag = "0.1.1",
  --lazy = false,
  ft = "org",
  cmd = require("plugins.org-roam-nvim.cmds"),
  --keys = require("plugins.org-roam-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "nvim-orgmode/orgmode" },
  opts = require("plugins.org-roam-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
