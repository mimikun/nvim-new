---@type table
local opts = {
  -- General settings
  default_note_dir = vim.fn.expand("~/notes"),
  -- Path to your Obsidian vault, if you use it
  obsidian_path = nil,

  -- Task management
  ---@type "high" | "medium" | "low" | "none"
  default_task_priority = "medium",
  default_task_due_date = "today",

  -- UI settings
  ui = {
    -- Set to a colorscheme name to force a specific theme
    colorscheme = nil,
    ---@type "rounded" | "single" | "double" | "solid"
    border_style = "rounded",
    menu_width = 55,
    menu_height = 15,
    task_browser_width = 80,
    task_browser_height = 20,
    task_form_width = 60,
    task_form_height = 17,
    date_picker_width = 34,
    date_picker_height = 15,
    new_notebook_form = {
      width = 60,
      height = 13,
      input_width = 40,
      border_style = "rounded",
    },
  },

  -- Storage settings
  storage = {
    ---@type "json" | "markdown"
    file_format = "json",
    tasks_subdir = "tasks",
    notes_subdir = "notes",
  },

  -- Export settings
  export = {
    default_format = "markdown",
    export_dir = vim.fn.expand("~/exported_notes"),
  },

  -- Keybindings
  keymaps = {
    open_menu = "<leader>fn",
    new_task = "<leader>nt",
    browse_tasks = "<leader>ln",
    new_notebook = "<leader>nn",
  },
}

return opts
