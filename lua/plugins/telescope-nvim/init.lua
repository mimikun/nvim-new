---@type LazySpec
local spec = {
  "nvim-telescope/telescope.nvim",
  --lazy = false,
  cmd = "Telescope",
  keys = require("plugins.telescope-nvim.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.telescope-nvim.dependencies"),
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      extensions = {
        fzf = {
          ---@type string "smart_case" | "ignore_case" | "respect_case"
          case_mode = "smart_case",
        },
        smart_open = {
          show_scores = false,
          match_algorithm = "fzf",
        },
      },
    })

    telescope.load_extension("fzf")
  end,
  --cond = false,
  --enabled = false,
}

return spec
