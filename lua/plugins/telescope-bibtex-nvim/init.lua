---@type LazySpec
local spec = {
  "nvim-telescope/telescope-bibtex.nvim",
  --lazy = false,
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("telescope").load_extension("bibtex")
  end,
  --cond = false,
  --enabled = false,
}

return spec
