---@type LazySpec
local spec = {
  "gorbit99/codewindow.nvim",
  --lazy = false,
  keys = require("plugins.codewindow-nvim.keys"),
  config = function()
    local codewindow = require("codewindow")

    codewindow.setup(require("plugins.codewindow-nvim.opts"))
    codewindow.apply_default_keybinds()
  end,
  cond = false,
  enabled = false,
}

return spec
