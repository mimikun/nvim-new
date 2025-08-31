---@type LazySpec
local spec = {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  lazy = false,
  cmd = require("plugins.nvim-treesitter.cmds"),
  --keys = "",
  --event = "VeryLazy",
  --dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvim_treesitter = require("nvim-treesitter")
    nvim_treesitter.setup({
      install_dir = vim.fn.stdpath("data") .. "/site",
    })

    nvim_treesitter.install({ "all" }, {
      max_jobs = 4,
    })
  end,
  --cond = false,
  --enabled = false,
}

return spec
