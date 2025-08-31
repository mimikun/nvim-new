---@type Config
local opts = {
  ---@type string "default" | "highContrast"
  style = "default",
  transparent = false,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    ---@type string "dark" | "transparent" | "normal"
    sidebars = "normal",
    ---@type string "dark" | "transparent" | "normal"
    floats = "dark",
  },
  sidebars = { "qf", "help" },
  hide_inactive_statusline = false,
  dim_inactive = false,
  lualine_bold = false,
  use_background = true,
}

return opts
