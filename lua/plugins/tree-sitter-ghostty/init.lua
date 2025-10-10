---@type LazySpec
local spec = {
  "bezhermoso/tree-sitter-ghostty",
  build = "make nvim_install",
  lazy = false,
  ft = { "ghostty" },
  --event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  --cond = false,
  --enabled = false,
}

return spec
