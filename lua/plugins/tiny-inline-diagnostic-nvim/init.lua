---@type LazySpec
local spec = {
  "rachartier/tiny-inline-diagnostic.nvim",
  --lazy = false,
  event = "VeryLazy",
  opts = require("plugins.tiny-inline-diagnostic-nvim.opts"),
  config = function(_, opts)
    require("tiny-inline-diagnostic").setup(opts)
    --vim.diagnostic.config({ virtual_text = false })
  end,
  priority = 1000,
  --cond = false,
  --enabled = false,
}

return spec
