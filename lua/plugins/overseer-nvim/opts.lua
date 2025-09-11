---@type overseer.Config
local opts = {
  strategy = "terminal",
  templates = { "builtin" },
  template_dirs = { "overseer.template" },
  ---@type overseer.ConfigTaskList
  task_list = {
    ---@type 1 | 2 | 3
    default_detail = 1,
    max_width = { 100, 0.2 },
    min_width = { 40, 0.1 },
    width = nil,
    max_height = { 20, 0.1 },
    min_height = 8,
    height = nil,
    separator = "────────────────────────────────────────",
    ---@type "left" | "right" | "bottom"
    direction = "bottom",
  },
  ---@type overseer.ConfigFloatWin
  form = {
    border = "rounded",
    zindex = 40,
    win_opts = {
      winblend = 0,
    },
  },
  ---@type overseer.ConfigFloatWin
  confirm = {
    border = "rounded",
    zindex = 40,
    win_opts = {
      winblend = 0,
    },
  },
  ---@type overseer.ConfigTaskWin
  task_win = {
    border = "rounded",
    padding = 2,
    win_opts = {
      winblend = 0,
    },
  },
  ---@type overseer.ConfigFloatWin
  help_win = {
    border = "rounded",
  },
  ---@type "always" | "missing" | "allow" | "avoid" | "never"
  default_template_prompt = "allow",
}

return opts
