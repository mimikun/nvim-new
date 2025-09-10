local save_path = os.getenv("XDG_PICTURES_DIR") or (os.getenv("HOME") .. "/Pictures")

---@type table
local opts = {
  code_font_family = "CaskaydiaCove Nerd Font",
  watermark_font_family = "Pacifico",
  watermark = "",
  ---@type "default" | "sea" | "dusk" | "summer" | "grape" | "peach" | "bamboo"
  bg_theme = "default",
  ---@type "/" | "👉"
  breadcrumbs_separator = "👉",
  has_breadcrumbs = true,
  has_line_number = true,
  show_workspace = true,
  min_width = 0,
  bg_x_padding = 122,
  bg_y_padding = 82,
  ---@type number | nil
  bg_padding = nil,
  save_path = save_path,
}

return opts
