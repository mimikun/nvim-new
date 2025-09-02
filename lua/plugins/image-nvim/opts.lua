---@type Options
local opts = {
  ---@type string "kitty" | "ueberzug"
  backend = "kitty",
  integrations = {
    markdown = {
      only_render_image_at_cursor = true,
      ---@type string "popup" | "inline"
      only_render_image_at_cursor_mode = "popup",
      floating_windows = false,
      filetypes = {
        "markdown",
        "vimwiki",
      },
    },
    neorg = {
      clear_in_insert_mode = false,
      only_render_image_at_cursor = true,
      filetypes = {
        "norg",
      },
    },
    typst = {
      enabled = true,
      filetypes = {
        "typst",
      },
    },
    syslang = {
      enabled = true,
    },
    html = {
      enabled = false,
    },
    css = {
      enabled = false,
    },
    org = {
      enabled = false,
    },
  },
  max_width_window_percentage = 100,
  window_overlap_clear_ft_ignore = {
    "cmp_menu",
    "cmp_docs",
    "snacks_notif",
    "scrollview",
    "scrollview_sign",
  },
  ignore_download_error = false,
  hijack_file_patterns = {
    "*.png",
    "*.jpg",
    "*.jpeg",
    "*.gif",
    "*.webp",
    "*.avif",
  },
}

return opts
