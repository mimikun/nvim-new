---@type LazySpec
local spec = {
  "nvim-telescope/telescope-media-files.nvim",
  --lazy = false,
  dependencies = require("plugins.telescope-media-files-nvim.dependencies"),
  config = function()
    require("telescope").load_extension("media_files")
  end,
  --cond = false,
  --enabled = false,
}

return spec
