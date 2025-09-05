local separators = {
  section = {
    left = "",
    right = "",
    --left = "",
    --right = "",
  },
  component = {
    left = "",
    right = "",
    --left = "",
    --right = "",
  },
}

local disabled_filetypes = {
  statusline = {},
  winbar = {},
}

local options = {
  icons_enabled = true,
  theme = "auto",
  section_separators = separators.section,
  component_separators = separators.component,
  disabled_filetypes = disabled_filetypes,
  ignore_focus = {},
  always_divide_middle = true,
  always_show_tabline = true,
  globalstatus = false,
  --globalstatus = vim.go.laststatus == 3,
}

local sections = {
  active = {
    lualine_a = {
      "mode",
    },
    lualine_b = {
      "branch",
      "diff",
      "diagnostics",
    },
    lualine_c = {
      "filename",
    },
    lualine_x = {
      {
        "encoding",
        show_bomb = true,
      },
      "fileformat",
      "filetype",
    },
    lualine_y = {
      "progress",
    },
    lualine_z = {
      "location",
    },
  },
  inactive = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      "filename",
    },
    lualine_x = {
      "location",
    },
    lualine_y = {},
    lualine_z = {},
  },
}

local tabline = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {},
}

local winbar = {
  active = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  inactive = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}

local extensions = {}

local opts = {
  options = options,
  sections = sections.active,
  inactive_sections = sections.inactive,
  --tabline = tabline,
  --winbar = winbar.active,
  --inactive_winbar = winbar.inactive,
  extensions = extensions,
}

return opts
