---@type table
local opts = {
  install_dir = vim.fn.stdpath("data") .. "/theme-hub",
  installed_file = vim.fn.stdpath("data") .. "/theme-hub/installed.json",
  persistent_theme_file = vim.fn.stdpath("data") .. "/theme-hub/persistent_theme.txt",
  auto_install_on_select = false,
  apply_after_install = false,
  persistent = false,
}

return opts
