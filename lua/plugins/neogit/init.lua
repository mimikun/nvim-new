---@type LazySpec
local spec = {
  "NeogitOrg/neogit",
  --lazy = false,
  cmd = require("plugins.neogit.cmds"),
  dependencies = require("plugins.neogit.dependencies"),
  opts = require("plugins.neogit.opts"),
  --cond = false,
  --enabled = false,
}

return spec
