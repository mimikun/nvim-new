---@type LazySpec
local spec = {
  "2kabhishek/octohub.nvim",
  --lazy = false,
  cmd = "Octohub",
  keys = require("plugins.octohub-nvim.keys"),
  dependencies = require("plugins.octohub-nvim.dependencies"),
  config = function()
    require("octohub").setup(require("plugins.octohub-nvim.opts"))
    require("telescope").load_extension("repos")
  end,
  --cond = false,
  --enabled = false,
}

return spec
