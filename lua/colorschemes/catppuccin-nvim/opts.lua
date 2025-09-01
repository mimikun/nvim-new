---@type CatppuccinOptions
local opts = {
  ---@type string "mocha" | "macchiato" | "frappe" | "latte" | "auto"
  flavour = "auto",
  background = {
    ---@type string "mocha" | "macchiato" | "frappe" | "latte" | "auto"
    light = "latte",
    ---@type string "mocha" | "macchiato" | "frappe" | "latte" | "auto"
    dark = "mocha",
  },
  compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
  transparent_background = vim.g.transparent_enabled,
  float = {
    transparent = vim.g.transparent_enabled,
    solid = false,
  },
  show_end_of_buffer = false,
  term_colors = false,
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  no_italic = false,
  no_bold = false,
  no_underline = false,
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
  },
  auto_integrations = true,
}

return opts
