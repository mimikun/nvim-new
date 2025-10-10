---@type LazySpec
local spec = {
  "ndmitchell/ghcid",
  --lazy = false,
  ft = { "haskell" },
  cmd = require("plugins.ghcid-nvim.cmds"),
  --event = "VeryLazy",
  config = function(plugin)
    vim.opt.rtp:append(plugin.dir .. "/plugins/nvim/")
  end,
  cond = false,
  enabled = false,
}

return spec
