---@type LazySpec
local spec = {
  "alker0/chezmoi.vim",
  --lazy = false,
  event = "VeryLazy",
  init = function()
    vim.g["chezmoi#use_tmp_buffer"] = true
  end,
  --cond = false,
  --enabled = false,
}

return spec
