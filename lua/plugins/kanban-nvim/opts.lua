---@type table
local opts = {
  ---@type "top" | "bottom"
  move_position = "top",
  ---@type "top" | "bottom"
  add_position = "bottom",
  layout = {
    x_margin = 5,
    y_margin = 3,
    list_x_margin = 2,
    task_y_margin = 2,
    task_height = 3,
    uncomplete_border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    complete_border = { "✔", "─", "╮", "│", "╯", "─", "╰", "│" },
  },
}

return opts
