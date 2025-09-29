---@type LazySpec
local spec = {
  "A7Lavinraj/fyler.nvim",
  --branch = "stable",
  --lazy = false,
  cmd = "Fyler",
  --event = "VeryLazy",
  dependencies = require("plugins.fyler-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")

    require("fyler").setup(require("plugins.fyler-nvim.opts.fyler"))
    telescope.setup(require("plugins.fyler-nvim.opts.telescope"))
    telescope.load_extension("fyler_zoxide")
  end,
  cond = false,
  enabled = false,
}

return spec
