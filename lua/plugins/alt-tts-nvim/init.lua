---@type LazySpec
local spec = {
  "chriswritescode-dev/tts.nvim",
  name = "alt-tts",
  --lazy = false,
  cmd = require("plugins.alt-tts-nvim.cmds"),
  keys = require("plugins.alt-tts-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.alt-tts-nvim.opts"),
  cond = false,
  enabled = false,
  --main = ""
  --dir = ""
  --url = ""
}

return spec
