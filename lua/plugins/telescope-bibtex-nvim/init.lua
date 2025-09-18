---@type LazySpec
local spec = {
  "nvim-telescope/telescope-bibtex.nvim",
  --lazy = false,
  --event = "VeryLazy",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    local telescope = require("telescope")

    telescope.setup(require("plugins.telescope-bibtex-nvim.opts.telescope"))
    telescope.load_extension("bibtex")
  end,
  --cond = false,
  --enabled = false,
}

return spec
