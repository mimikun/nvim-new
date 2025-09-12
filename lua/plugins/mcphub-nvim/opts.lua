---@type MCPHub.Config
local opts = {
  -- NOTE: `mcp-hub` binary related options
  config = vim.fn.expand("~/.config/mcphub/servers.json"),
  port = 37373,
  shutdown_delay = 5 * 60 * 000, -- 5 min
  use_bundled_binary = false,
  mcp_request_timeout = 60000,
  global_env = {},
  ---@type MCPHub.WorkspaceConfig
  workspace = {
    enabled = true,
    look_for = {
      ".mcphub/servers.json",
      ".vscode/mcp.json",
      ".cursor/mcp.json",
    },
    reload_on_dir_changed = true,
    port_range = {
      min = 40000,
      max = 41000,
    },
  },
  -- NOTE: Chat-plugin related options
  auto_approve = false,
  auto_toggle_mcp_servers = true,
  ---@type MCPHub.Extensions.Config
  extensions = {
    avante = {
      enabled = true,
      make_slash_commands = true,
    },
    copilotchat = {
      enabled = true,
      convert_tools_to_functions = true,
      convert_resources_to_functions = true,
      add_mcp_prefix = false,
    },
  },
  -- NOTE: Plugin specific options
  native_servers = {},
  builtin_tools = {
    ---@type EditSessionConfig
    edit_file = {
      parser = {
        track_issues = true,
        extract_inline_content = true,
      },
      locator = {
        fuzzy_threshold = 0.8,
        enable_fuzzy_matching = true,
      },
      ui = {
        go_to_origin_on_complete = true,
        keybindings = {
          accept = ".", -- Accept current change
          reject = ",", -- Reject current change
          next = "n", -- Next diff
          prev = "p", -- Previous diff
          accept_all = "ga", -- Accept all remaining changes
          reject_all = "gr", -- Reject all remaining changes
        },
      },
      feedback = {
        include_parser_feedback = true,
        include_locator_feedback = true,
        include_ui_summary = true,
        ui = {
          include_session_summary = true,
          include_final_diff = true,
          send_diagnostics = true,
          wait_for_diagnostics = 500,
          diagnostic_severity = vim.diagnostic.severity.WARN, -- Only show warnings and above by default
        },
      },
    },
  },
  ---@type MCPHub.UIConfig
  ui = {
    window = {
      ---@type string | number | float
      width = 0.8,
      ---@type string | number | float
      height = 0.8,
      ---@type "center" | "top-left" | "top-right" | "bottom-left" | "bottom-right" | "top" | "bottom" | "left" | "right"
      align = "center",
      relative = "editor",
      zindex = 50,
      ---@type "none" | "single" | "double" | "rounded" | "solid" | "shadow"
      border = "rounded",
    },
    -- window-scoped options (vim.wo)
    wo = {
      winhl = "Normal:MCPHubNormal,FloatBorder:MCPHubBorder",
    },
  },
  json_decode = nil,
  on_ready = function(hub)
    -- Called when hub is ready
  end,
  on_error = function(err)
    -- Called on errors
  end,
  -- NOTE: other
  -- In cases where mcp-hub is hosted somewhere, set this to the server URL
  -- e.g `http://mydomain.com:customport` or `https://url_without_need_for_port.com`
  server_url = nil,
}

return opts
