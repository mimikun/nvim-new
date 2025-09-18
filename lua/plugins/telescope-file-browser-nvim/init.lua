---@type LazySpec
local spec = {
  "nvim-telescope/telescope-file-browser.nvim",
  --lazy = false,
  keys = require("plugins.telescope-file-browser-nvim.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.telescope-file-browser-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")

    telescope.setup(require("plugins.telescope-file-browser-nvim.opts.telescope"))
    telescope.load_extension("file_browser")
  end,
  cond = false,
  enabled = false,
}

return spec
