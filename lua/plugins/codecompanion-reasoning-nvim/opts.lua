---@type table
local opts = {
  enabled = true,
  chat_history = {
    ---@type boolean
    auto_load_last_session = false,
    sessions_dir = vim.fn.stdpath("data") .. "/codecompanion-reasoning/sessions",
    max_sessions = 100,
    ---@type "telescope" | "snacks" | "auto"
    picker = "auto",
    ---@type boolean
    continue_last_chat = false,
    title_generation_opts = {
      adapter = nil,
      model = nil,
      refresh_every_n_prompts = 3,
      max_refreshes = 3,
      format_title = nil,
    },
  },
}

return opts
