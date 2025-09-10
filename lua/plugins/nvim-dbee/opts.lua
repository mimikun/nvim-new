---@type Config
local opts = {
  ---@type drawer_config
  drawer = {
    disable_help = false,
    mappings = {
      -- manually refresh drawer
      { key = "r", mode = "n", action = "refresh" },
      -- actions perform different stuff depending on the node:
      -- action_1 opens a note or executes a helper
      { key = "<CR>", mode = "n", action = "action_1" },
      -- action_2 renames a note or sets the connection as active manually
      { key = "cw", mode = "n", action = "action_2" },
      -- action_3 deletes a note or connection (removes connection from the file if you configured it like so)
      { key = "dd", mode = "n", action = "action_3" },
      -- these are self-explanatory:
      { key = "c", mode = "n", action = "collapse" },
      { key = "e", mode = "n", action = "expand" },
      { key = "o", mode = "n", action = "toggle" },
      -- mappings for menu popups:
      { key = "<CR>", mode = "n", action = "menu_confirm" },
      { key = "y", mode = "n", action = "menu_yank" },
      { key = "<Esc>", mode = "n", action = "menu_close" },
      { key = "q", mode = "n", action = "menu_close" },
    },
    disable_candies = false,
    candies = {
      history = { icon = "" },
      note = { icon = "" },
      connection = { icon = "󱘖" },
      database_switch = { icon = "" },
      schema = { icon = "" },
      table = { icon = "" },
      streaming_table = { icon = "" },
      managed = { icon = "" },
      view = { icon = "" },
      materialized_view = { icon = "" },
      sink = { icon = "" },
      column = { icon = "󰠵" },
      add = { icon = "" },
      edit = { icon = "󰏫" },
      remove = { icon = "󰆴" },
      help = { icon = "󰋖" },
      source = { icon = "󰃖" },
      none = { icon = " " },
      none_dir = { icon = "" },
      node_expanded = { icon = "" },
      node_closed = { icon = "" },
    },
  },

  ---@type result_config
  result = {
    -- number of rows in the results set to display per page
    page_size = 100,
    -- whether to focus the result window after a query
    focus_result = true,
    -- progress (loading) screen options
    progress = {
      -- spinner to use in progress display
      spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
      -- prefix to display before the timer
      text_prefix = "Executing...",
    },
  },

  ---@type editor_config
  editor = {
    -- directory where to store the scratchpads.
    ---@type string
    --directory = "path/to/scratchpad/dir",
  },

  ---@type call_log_config
  call_log = {
    disable_candies = false,
    candies = {
      unknown = { icon = "" },
      executing = { icon = "󰑐" },
      executing_failed = { icon = "󰑐" },
      retrieving = { icon = "" },
      retrieving_failed = { icon = "" },
      archived = { icon = "" },
      archive_failed = { icon = "" },
      canceled = { icon = "" },
    },
  },
}

return opts
