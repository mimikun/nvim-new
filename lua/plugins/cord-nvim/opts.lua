---@type CordConfig
local opts = {
  display = {
    theme = "default",
    flavor = "dark",
    view = "full",
    swap_fields = false,
    swap_icons = false,
  },
  timestamp = {
    reset_on_idle = false,
    reset_on_change = false,
    shared = false,
  },
  idle = {
    details = "Idling",
    state = nil,
    tooltip = "💤",
    icon = nil,
  },
  text = {
    default = nil,
  },
  buttons = nil,
  assets = nil,
  variables = nil,
  hooks = {
    ready = nil,
    shutdown = nil,
    pre_activity = nil,
    post_activity = nil,
    idle_enter = nil,
    idle_leave = nil,
    workspace_change = nil,
    buf_enter = nil,
  },
  plugins = nil,
  advanced = {
    plugin = {
      cursor_update = "on_hold",
    },
    server = {
      update = "fetch",
      pipe_path = nil,
      executable_path = nil,
      timeout = 300000,
    },
    discord = {
      pipe_paths = nil,
      reconnect = {
        enabled = false,
        interval = 5000,
      },
    },
    workspace = {
      limit_to_cwd = false,
    },
  },
}

return opts
