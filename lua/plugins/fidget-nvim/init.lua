---@type LazySpec
local spec = {
  "j-hui/fidget.nvim",
  --lazy = false,
  cmd = "Fidget",
  event = "VeryLazy",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("fidget").setup(require("plugins.fidget-nvim.opts"))
    require("telescope").load_extension("fidget")
  end,
  --cond = false,
  --enabled = false,
}

return spec
