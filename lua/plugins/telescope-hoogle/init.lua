---@type LazySpec
local spec = {
  "luc-tielen/telescope_hoogle",
  --lazy = false,
  --event = "VeryLazy",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("telescope").load_extension("hoogle")
  end,
  cond = false,
  enabled = false,
}

return spec
