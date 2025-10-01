---@type LazySpec
local spec = {
  "mistweaverco/kulala.nvim",
  --lazy = false,
  ft = require("plugins.kulala-nvim.ft"),
  keys = require("plugins.kulala-nvim.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.kulala-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")

    require("kulala").setup(require("plugins.kulala-nvim.opts"))

    telescope.setup({
      extensions = {
        kulala = {
          method_width = 8,
          url_width = 256,
          desc_width = 32,
        },
      },
    })
    telescope.load_extension("kulala")
  end,
  cond = false,
  enabled = false,
}

return spec
