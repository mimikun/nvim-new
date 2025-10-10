---@type LazySpec
local spec = {
  "JavaHello/spring-boot.nvim",
  --lazy = false,
  ft = require("plugins.spring-boot-nvim.ft"),
  --event = "VeryLazy",
  dependencies = require("plugins.spring-boot-nvim.dependencies"),
  opts = require("plugins.spring-boot-nvim.opts"),
  config = function()
    --    INIT
  end,
  cond = false,
  enabled = false,
}

return spec
