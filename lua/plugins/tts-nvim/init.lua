---@type LazySpec
local spec = {
  "johannww/tts.nvim",
  --lazy = false,
  cmd = "TTS",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = require("plugins.tts-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
