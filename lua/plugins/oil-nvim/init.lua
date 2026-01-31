---@type LazySpec
local spec = {
  "stevearc/oil.nvim",
  lazy = false,
  cmd = require("plugins.oil-nvim.cmds"),
  --keys = require("plugins.oil-nvim.keys"),
  dependencies = require("plugins.oil-nvim.dependencies"),
  --opts = require("plugins.oil-nvim.opts"),
  config = function()
    require("oil").setup(require("plugins.oil-nvim.opts"))
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
  --main = ""
  --pin = false,
  --submodules = false,
  --module = false,
  --priority = 1000,
  --optional = false,
  --cond = false,
  --enabled = false,
}

return spec
