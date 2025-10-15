---@type LazySpec
local spec = {
  "nvim-telescope/telescope-project.nvim",
  --lazy = false,
  event = "VeryLazy",
  dependencies = require("plugins.telescope-project-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")

    telescope.setup(require("plugins.telescope-project-nvim.opts.telescope"))
    telescope.load_extension("project")
  end,
  cond = false,
  enabled = false,
}

return spec
