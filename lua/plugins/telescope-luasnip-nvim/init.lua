---@type LazySpec
local spec = {
  "benfowler/telescope-luasnip.nvim",
  --lazy = false,
  --event = "VeryLazy",
  dependencies = require("plugins.telescope-luasnip-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")

    telescope.setup(require("plugins.telescope-luasnip-nvim.opts.telescope"))
    telescope.load_extension("luasnip")
  end,
  --cond = false,
  --enabled = false,
}

return spec
