---@type LazySpec
local spec = {
  "hamidi-dev/org-super-agenda.nvim",
  --lazy = false,
  ft = "org",
  cmd = "OrgSuperAgenda",
  keys = require("plugins.org-super-agenda-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "nvim-orgmode/orgmode" },
  opts = require("plugins.org-super-agenda-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
