---@type LazySpec
local spec = {
  "tpope/vim-projectionist",
  --lazy = false,
  cmd = require("plugins.vim-projectionist.cmds"),
  --event = "VeryLazy",
  --dependencies = require("plugins.vim-projectionist.dependencies"),
  config = function()
    --    INIT
  end,
  cond = false,
  enabled = false,
}

return spec
