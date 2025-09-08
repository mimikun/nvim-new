---@type LazySpec
local spec = {
  "toppair/peek.nvim",
  build = "deno task --quiet build:fast",
  --lazy = false,
  cmd = require("plugins.peek-nvim.cmds"),
  event = "VeryLazy",
  config = function()
    local peek = require("peek")
    peek.setup(require("plugins.peek-nvim.opts"))
    vim.api.nvim_create_user_command("PeekOpen", peek.open, {})
    vim.api.nvim_create_user_command("PeekClose", peek.close, {})
  end,
  --cond = false,
  --enabled = false,
}

return spec
