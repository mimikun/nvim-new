---@type string
local home = vim.fn.expand("~/zettelkasten")

---@type table
local opts = {
  home = home,
  dailies = home,
  weeklies = home,
  templates = home,
  image_subdir = "img",
  journal_auto_open = false,
  ---@type string "wiki" | "markdown"
  image_link_style = "wiki",
  ---@type string "filename" | "modified"
  sort = "filename",
  calendar_opts = {
    -- calendar week display mode: 1 .. 'WK01', 2 .. 'WK 1', 3 .. 'KW01', 4 .. 'KW 1', 5 .. '1'
    weeknm = 4,
    -- use monday as first day of week: 1 .. true, 0 .. false
    calendar_monday = 1,
    ---@type string "left" | "right" | "left-fit"
    calendar_mark = "left-fit",
  },
  ---@type string "xsel" | "xclip" | "wl-paste" | "osascript"
  clipboard_program = "",
  filename_space_subst = nil,
  filename_small_case = false,
  close_after_yanking = false,
  ---@type string "prefer_new_note" | "smart" | "always_ask"
  template_handling = "smart",
  ---@type string "smart" | "prefer_home" | "same_as_current"
  new_note_location = "smart",
  follow_url_fallback = nil,
}

return opts
