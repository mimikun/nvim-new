---@type LazySpec
local spec = {
  "danielfalk/smart-open.nvim",
  --lazy = false,
  keys = require("plugins.smart-open-nvim.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.smart-open-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")

    telescope.setup(require("plugins.smart-open-nvim.opts.telescope"))
    telescope.load_extension("smart_open")
  end,
  --cond = false,
  --enabled = false,
}

return spec
