---@type LazySpec
local spec = {
  "rest-nvim/rest.nvim",
  --lazy = false,
  cmd = "Rest",
  dependencies = require("plugins.rest-nvim.dependencies"),
  config = function()
    vim.g.rest_nvim = require("plugins.rest-nvim.opts")
    require("telescope").load_extension("rest")
  end,
  cond = false,
  enabled = false,
}

return spec
