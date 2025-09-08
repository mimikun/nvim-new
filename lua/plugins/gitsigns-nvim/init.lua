---@type LazySpec
local spec = {
  "lewis6991/gitsigns.nvim",
  --lazy = false,
  cmd = "Gitsigns",
  event = "BufEnter",
  dependencies = { "petertriho/nvim-scrollbar" },
  config = function()
    require("gitsigns").setup(require("plugins.gitsigns-nvim.opts"))
    --require("scrollbar.handlers.gitsigns").setup()
  end,
  --cond = false,
  --enabled = false,
}

return spec
