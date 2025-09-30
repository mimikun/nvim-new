---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>tp",
    "<cmd>FkThemePicker<cr>",
    mode = "n",
    desc = "Open Theme Picker",
    { silent = true },
  },
  {
    "<leader>tn",
    "<cmd>FkThemeNext<cr>",
    mode = "n",
    desc = "Cycle to Next FkTheme",
    { silent = true },
  },
}

return keys
