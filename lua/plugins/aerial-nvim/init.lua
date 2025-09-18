---@type LazySpec
local spec = {
  "stevearc/aerial.nvim",
  --lazy = false,
  cmd = require("plugins.aerial-nvim.cmds"),
  keys = require("plugins.aerial-nvim.keys"),
  dependencies = require("plugins.aerial-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")

    require("aerial").setup(require("plugins.aerial-nvim.opts.aerial"))

    telescope.setup(require("plugins.aerial-nvim.opts.telescope"))
    telescope.load_extension("aerial")
  end,
  cond = false,
  enabled = false,
}

return spec
