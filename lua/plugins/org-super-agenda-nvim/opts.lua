---@type table
local opts = {
  org_files = {},
  org_directories = {},
  exclude_files = {},
  exclude_directories = {},
  keymaps = {
    priority_up = "+",
    priority_down = "-",
    priority_clear = "0",
    priority_A = "A",
    priority_B = "B",
    priority_C = "C",
  },

  -- Defaults & behavior

  -- keep original org order (rarely useful)
  keep_order = false,
  -- if true, an item can live in multiple groups
  allow_duplicates = false,
  -- show catch-all section
  show_other_group = false,
  heading_max_length = 70,
  -- keep hidden items across reopen
  persist_hidden = false,
  ---@type "classic" | "compact"
  view_mode = "classic",

  classic = {
    heading_order = {
      "filename",
      "todo",
      "priority",
      "headline",
    },
    short_date_labels = false,
    inline_dates = true,
  },
  compact = {
    filename_min_width = 10,
    label_min_width = 12,
  },

  -- Global fallback sort for groups that omit `sort`
  group_sort = {
    by = "date_nearest",
    order = "asc",
  },
}

return opts
