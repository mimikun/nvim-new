---@type LazySpec
local spec = {
  "nvim-telescope/telescope-ui-select.nvim",
  --lazy = false,
  --event = "VeryLazy",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    local telescope = require("telescope")

    telescope.setup(require("plugins.telescope-ui-select-nvim.opts.telescope"))
    telescope.load_extension("ui-select")
  end,
  --cond = false,
  --enabled = false,
}

return spec
