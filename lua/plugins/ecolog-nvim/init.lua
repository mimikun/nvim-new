---@type LazySpec
local spec = {
  "ph1losof/ecolog.nvim",
  branch = "beta",
  --lazy = false,
  cmd = require("plugins.ecolog-nvim.cmds"),
  keys = require("plugins.ecolog-nvim.keys"),
  event = "VeryLazy",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("ecolog").setup(require("plugins.ecolog-nvim.opts"))
    require("telescope").load_extension("ecolog")
  end,
  --cond = false,
  --enabled = false,
}

return spec
