---@type table
local opts = {
  history = 1000,
  enable_persistent_history = false,
  length_limit = 1048576,
  continuous_sync = false,
  db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
  filter = nil,
  --prompt = nil,
  default_register = '"',
  default_register_macros = "q",
  content_spec_column = false,
  disable_keycodes_parsing = false,
  dedent_picker_display = false,
  initial_mode = "insert",
  on_select = {
    move_to_front = false,
  },
  on_paste = {
    set_reg = false,
    move_to_front = false,
  },
  on_replay = {
    set_reg = false,
    move_to_front = false,
  },
}

return opts
