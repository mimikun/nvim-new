---@type LazySpec
local spec = {
  "johmsalas/text-case.nvim",
  lazy = false,
  cmd = require("plugins.text-case-nvim.cmds"),
  keys = require("plugins.text-case-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("textcase").setup(require("plugins.text-case-nvim.opts"))
    require("telescope").load_extension("textcase")
  end,
  cond = false,
  enabled = false,
}

return spec
