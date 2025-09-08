---@type LazySpec
local spec = {
  "nvim-telescope/telescope.nvim",
  --lazy = false,
  cmd = "Telescope",
  keys = require("plugins.telescope-nvim.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.telescope-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")
    telescope.setup(require("plugins.telescope-nvim.opts"))
    telescope.load_extension("fzf")
  end,
  --cond = false,
  --enabled = false,
}

return spec
