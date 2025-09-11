---@type table
local opts = {
  -- enable reading vscode rest client environment variables
  vscode_rest_client_environmentvars = false,

  ui = {
    ---@type "split" | "float"
    display_mode = "split",
    ---@type "vertical" | "horizontal"
    split_direction = "vertical",
    ---@type "body"|"headers"|"headers_body"|"verbose"|fun(response: Response)
    default_view = "body",
    ---@type boolean | "float"
    show_variable_info_text = false,
    ---@type "signcolumn" | "on_request" | "above_request" | "below_request" | nil
    show_icons = "on_request",
    icons = {
      inlay = {
        loading = "⏳",
        done = "✔",
        error = "✘",
      },
      lualine = "🐼",
    },

    -- disable notifications of script output
    disable_script_print_output = false,

    -- do not show responses over maximum size, in bytes
    max_response_size = 32768,

    disable_news_popup = false,
  },

  lsp = {
    filetypes = {
      "http",
      "rest",
      "json",
      "yaml",
      "bruno",
    },

    ---@type boolean|table
    keymaps = false,

    formatter = {
      indent = 2,
    },
    on_attach = nil,
  },

  -- enable/disable bug reports on all errors
  generate_bug_report = false,

  ---@type boolean|table
  global_keymaps = false,

  -- Prefix for global keymaps
  global_keymaps_prefix = "<leader>R",

  kulala_keymaps_prefix = "",
}

return opts
