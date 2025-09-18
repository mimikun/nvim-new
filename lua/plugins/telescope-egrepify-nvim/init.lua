---@type LazySpec
local spec = {
  "fdschmidt93/telescope-egrepify.nvim",
  --lazy = false,
  --event = "VeryLazy",
  dependencies = require("plugins.telescope-egrepify-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")

    telescope.setup(require("plugins.telescope-egrepify-nvim.opts.telescope"))
    telescope.load_extension("egrepify")
  end,
  cond = false,
  enabled = false,
}

return spec
