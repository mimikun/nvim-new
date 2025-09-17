---@type boolean
local is_windows = vim.fn.has("win32") == 0

---@type table
local opts = {
  dap_configurations = {
    {
      type = "go",
      name = "Attach remote",
      mode = "remote",
      request = "attach",
    },
  },
  delve = {
    path = "dlv",
    initialize_timeout_sec = 20,
    port = "${port}",
    args = {},
    build_flags = {},
    detached = is_windows,
    cwd = nil,
    --output_mode = "remote",
  },
  tests = {
    verbose = false,
  },
}

return opts
