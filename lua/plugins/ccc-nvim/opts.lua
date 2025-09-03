---@type ccc.Options
local opts = {
  bar_char = "█",
  point_char = "◊",
  point_color = "",
  bar_len = 30,
  win_opts = {
    style = "minimal",
    border = "rounded",
  },
  preserve = false,
  save_on_quit = false,
  max_prev_colors = 10,
  ---@type string "auto" | "show" | "hide"
  alpha_show = "auto",
  ---@type string "fg" | "foreground" | "bg" | "background" | "virtual"
  highlight_mode = "bg",
  virtual_symbol = " ● ",
  ---@type string "inline-left" | "inline-right" | "eol"
  virtual_pos = "inline-left",
  highlighter = {
    auto_enable = false,
    -- 100 KB
    max_byte = 100 * 1024,
    filetypes = {},
    excludes = {},
  },
  recognize = {
    input = false,
    output = false,
  },
}

return opts
