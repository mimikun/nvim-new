---@type LazySpec
local spec = {
  "debugloop/telescope-undo.nvim",
  --lazy = false,
  keys = require("plugins.telescope-undo-nvim.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.telescope-undo-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")

    telescope.setup(require("plugins.telescope-undo-nvim.opts.telescope"))
    telescope.load_extension("undo")
  end,
  cond = false,
  enabled = false,
}

return spec
