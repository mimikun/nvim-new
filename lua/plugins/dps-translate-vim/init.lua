---@type LazySpec
local spec = {
  "Omochice/dps-translate-vim",
  lazy = false,
  cmd = require("plugins.dps-translate-vim.cmds"),
  dependencies = { "vim-denops/denops.vim" },
  config = function()
    vim.g.dps_translate_source = "en"
    vim.g.dps_translate_target = "ja"
    vim.g.dps_translate_engine = "google"
    vim.g.dps_translate_deepl_token = nil
    vim.g.dps_translate_deepl_is_pro = false
    vim.g.dps_translate_border = {
      topLeft = "┌",
      top = "─",
      topRight = "┐",
      left = "│",
      right = "│",
      bottomLeft = "└",
      bottom = "─",
      bottomRight = "┘",
    }
  end,
  cond = false,
  enabled = false,
}

return spec
