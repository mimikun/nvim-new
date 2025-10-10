---@type LazySpec
local spec = {
  "mrcjkb/telescope-manix",
  --branch = "0.1.x",
  --lazy = false,
  event = "VeryLazy",
  dependencies = require("plugins.telescope-manix.dependencies"),
  config = function()
    require("telescope").load_extension("manix")
  end,
  cond = false,
  enabled = false,
}

return spec
