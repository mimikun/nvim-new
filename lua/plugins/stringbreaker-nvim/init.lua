---@type LazySpec
local spec = {
  "duqcyxwd/stringbreaker.nvim",
  --lazy = false,
  cmd = require("plugins.stringbreaker-nvim.cmds"),
  keys = require("plugins.stringbreaker-nvim.keys"),
  --event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    local stringBreaker = require("string-breaker")

    stringBreaker.setup(require("plugins.stringbreaker-nvim.opts"))

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "stringBreaker",
      callback = function()
        vim.keymap.set("n", "<space>fs", stringBreaker.save, { buffer = true, silent = true })
        vim.keymap.set("n", "<space>qq", stringBreaker.cancel, { buffer = true, silent = true })
      end,
    })
  end,
  --cond = false,
  --enabled = false,
}

return spec
