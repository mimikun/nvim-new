---@type monokaiv2Options
local opts = {
  -- Basic settings
  transparent_background = vim.g.transparent_enabled,
  devicons = true,

  --- @type string "light" | "classic" | "machine" | "octagon" | "pro" | "ristretto" | "spectrum"
  filter = "pro",

  day_night = {
    enable = false,
    --- @type string "light" | "classic" | "machine" | "octagon" | "pro" | "ristretto" | "spectrum"
    day_filter = "pro",
    --- @type string "light" | "classic" | "machine" | "octagon" | "pro" | "ristretto" | "spectrum"
    night_filter = "spectrum",
  },

  ---@type string "underline" | "background"
  inc_search = "background",

  -- Plugin-specific settings
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
      underline_fill = false,
    },
    indent_blankline = {
      ---@type string "default" | "pro"
      context_highlight = "default",
      context_start_underline = false,
    },
  },
}

return opts
