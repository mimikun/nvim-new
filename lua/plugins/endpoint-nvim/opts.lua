---@type endpoint.config
local opts = {
  ---@type endpoint.picker.config
  picker = {
    ---@type "telescope" | "vim_ui_select" | "snacks"
    type = "vim_ui_select",
  },

  ---@type endpoint.ui.config
  ui = {
    show_icons = true,
    show_method = true,
    methods = {
      GET = { icon = "📥" },
      POST = { icon = "📤" },
      PUT = { icon = "✏️" },
      DELETE = { icon = "🗑️" },
      PATCH = { icon = "🔧" },
      ROUTE = { icon = "🔗" },
    },
  },

  ---@type endpoint.cache.config
  cache = {
    ---@type "none" | "session" | "persistent"
    mode = "session",
  },

  ---@type table
  frameworks = {
    rails = {
      ---@type "action_only" | "controller_action" | "smart"
      display_format = "smart",
    },
    django = {
      url_param_format = "%v:%t",
      url_param_fallback = "%v",
      url_param_brackets = "{}",
    },
  },
}

return opts
