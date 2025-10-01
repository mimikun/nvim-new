---@type CopilotConfig
local opts = {
  ---@type PanelConfig
  panel = {
    enabled = true,
    auto_refresh = false,
    ---@type PanelLayoutConfig
    layout = {
      ---@type "top" | "left" | "right" | "bottom"
      position = "bottom",
      ratio = 0.4,
    },
  },

  ---@type SuggestionConfig
  suggestion = {
    enabled = true,
    auto_trigger = false,
    debounce = 75,
    ---@type SuggestionNotification|nil
    suggestion_notification = nil,
    ---@type SuggestionKeymapConfig
    keymap = {
      accept = "<M-l>",
      accept_word = false,
      accept_line = false,
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },

  ---@type NesConfig
  nes = {
    ---@type boolean
    enabled = true,
    ---@type boolean
    auto_trigger = false,
    ---@type NesKeymap
    keymap = {
      accept_and_goto = "<leader>p",
      accept = false,
      dismiss = "<Esc>",
    },
  },

  ---@type LoggerConfig
  logger = {
    file = vim.fn.stdpath("log") .. "/copilot-lua.log",
    trace_lsp = "off", ---@type "off" | "messages" | "verbose"
    trace_lsp_progress = false,
    log_lsp_messages = false,
  },

  ---@type string[]
  workspace_folders = {},

  ---@type string|nil
  copilot_model = nil,

  ---@type boolean
  disable_limit_reached_message = false,

  ---@type ShouldAttachFunc
  should_attach = function(_, _)
    if not vim.bo.buflisted then
      logger.debug("not attaching, buffer is not 'buflisted'")
      return false
    end

    if vim.bo.buftype ~= "" then
      logger.debug("not attaching, buffer 'buftype' is " .. vim.bo.buftype)
      return false
    end

    if string.match(bufname, "env") then
      logger.debug("not attaching, buffer is secret file")
      return false
    end

    return true
  end,

  ---@type ServerConfig
  server = {
    ---@type "nodejs" | "binary"
    type = "nodejs",
  },

  ---@type table<string, any>
  server_opts_overrides = {},
  ---@type table<string, boolean>
  filetypes = {},
}

return opts
