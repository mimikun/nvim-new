---@type table
local opts = {
  highlighting = {
    index = "Special",
    path = nil,
    current = "Function",
    win_count = "Comment",
  },
  keymaps = {
    entry_move_down = "<c-j>",
    entry_move_up = "<c-k>",
    entry_delete = "<c-d>",
    open_picker = "<Leader>ft",
  },
}

return opts
