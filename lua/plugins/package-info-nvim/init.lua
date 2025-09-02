---@type LazySpec
local spec = {
  "vuki656/package-info.nvim",
  --lazy = false,
  keys = require("plugins.package-info-nvim.keys"),
  event = "VeryLazy",
  dependencies = require("plugins.package-info-nvim.dependencies"),
  config = function()
    require("package-info").setup(require("plugins.package-info-nvim.opts"))
    require("telescope").load_extension("package_info")
  end,
  --cond = false,
  --enabled = false,
}

return spec
