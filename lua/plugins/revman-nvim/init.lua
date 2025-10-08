---@type LazySpec
local spec = {
  "3ZsForInsomnia/revman.nvim",
  --lazy = false,
  cmd = require("plugins.revman-nvim.cmds"),
  event = "VeryLazy",
  dependencies = require("plugins.revman-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")
    -- BUG: revman has bug
    --require("revman").setup(require("plugins.revman-nvim.opts.revman"))
    telescope.setup(require("plugins.revman-nvim.opts.telescope"))
    telescope.load_extension("revman")
  end,
  cond = false,
  enabled = false,
}

return spec
