---@type LazySpec
local spec = {
  "tsakirist/telescope-lazy.nvim",
  --lazy = false,
  --event = "VeryLazy",
  dependencies = require("plugins.telescope-lazy-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")

    telescope.setup(require("plugins.telescope-lazy-nvim.opts.telescope"))
    telescope.load_extension("lazy")
  end,
  cond = false,
  enabled = false,
}

return spec
