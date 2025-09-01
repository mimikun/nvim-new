---@type LazySpec
local spec = {
  "nvimdev/template.nvim",
  --lazy = false,
  cmd = "Template",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("template").setup(require("plugins.template-nvim.opts"))
    require("telescope").load_extension("find_template")
  end,
  --cond = false,
  --enabled = false,
}

return spec
