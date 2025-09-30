---@type table
local opts = {
  transparent_background = true,
  themes = {
    "tokyonight",
    "catppuccin",
    "gruvbox",
    "rose-pine",
    "material",
    "moonlight",
  },
  default_theme = "tokyonight",
  keymaps = {
    enable = true,
    open_picker = {
      lhs = "<leader>tp",
      rhs = "<cmd>FkThemePicker<cr>",
      mode = "n",
      desc = "Open Theme Picker",
    },
    next_theme = {
      lhs = "<leader>tn",
      rhs = "<cmd>FkThemeNext<cr>",
      mode = "n",
      desc = "Cycle to Next FkTheme",
    },
  },
}

return opts
