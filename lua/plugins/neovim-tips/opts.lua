---@type NeovimTipsOptions
local opts = {
  user_file = table.concat({
    vim.fn.stdpath("config"),
    "neovim_tips",
    "user_tips.md",
  }, "/"),
  daily_tip = 2,
}

return opts
