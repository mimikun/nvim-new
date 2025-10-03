---@type LazySpec
local spec = {
  "arakkkkk/kanban.nvim",
  --lazy = false,
  --ft = "",
  cmd = require("plugins.kanban-nvim.cmds"),
  --event = "VeryLazy",
  dependencies = { "nvim-telescope/telescope.nvim" },
  opts = require("plugins.kanban-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
