---@type LazySpec
local spec = {
  "ocaml/ocaml.nvim",
  --lazy = false,
  ft = require("plugins.ocaml-nvim.ft"),
  cmd = "OCaml",
  --event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    --vim.g.ocamlnvim = require("plugins.ocaml-nvim.opts")
    vim.g.ocamlnvim = {}
  end,
  cond = false,
  enabled = false,
}

return spec
