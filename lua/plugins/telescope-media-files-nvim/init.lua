---@type LazySpec
local spec = {
  "nvim-telescope/telescope-media-files.nvim",
  --lazy = false,
  --event = "VeryLazy",
  dependencies = require("plugins.telescope-media-files-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")

    telescope.setup(require("plugins.telescope-media-files-nvim.opts.telescope"))
    telescope.load_extension("media_files")
  end,
  --cond = false,
  --enabled = false,
}

return spec
