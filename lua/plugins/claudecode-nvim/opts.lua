---@type table
local cc_bin = {
  default = "claude",
  local_install = "~/.claude/local/claude",
  native_install = nil,
}

---@type ClaudeCodeConfig
local opts = {
  -- Server Configuration
  port_range = { min = 10000, max = 65535 },
  auto_start = true,
  terminal_cmd = cc_bin.default,

  -- Terminal Configuration
  terminal = {
    ---@type string "left" | "right"
    split_side = "right",
    split_width_percentage = 0.30,
    ---@type string "auto" | "snacks" | "native" | "external"
    provider = "auto",
    snacks_win_opts = {}, -- Opts to pass to `Snacks.terminal.open()`
  },

  -- Diff Integration
  diff_opts = {
    keep_terminal_focus = false,
  },
}

return opts
