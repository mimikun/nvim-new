---@type LazySpec
local spec = {
  "mrjones2014/smart-splits.nvim",
  --build = "./kitty/install-kittens.bash",
  --lazy = false,
  keys = require("plugins.smart-splits-nvim.keys"),
  opts = require("plugins.smart-splits-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
