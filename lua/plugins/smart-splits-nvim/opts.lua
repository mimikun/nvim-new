-- TODO: it

---@alias SmartSplitsAtEdgeBehavior 'split'|'wrap'|'stop'|function
---@alias SmartSplitsFloatWinBehavior 'previous'|'mux'
---@alias SmartSplitsMultiplexerType 'tmux'|'wezterm'|'kitty'|'zellij'

---@type boolean
local is_wsl = true

---@type string|nil
local wezterm_cli_path = is_wsl and "wezterm.exe" or "wezterm"

---@type SmartSplitsConfig
local opts = {
  wezterm_cli_path = wezterm_cli_path,
  ignored_buftypes = {
    "nofile",
    "quickfix",
    "prompt",
  },
  ignored_filetypes = {
    "NvimTree",
  },
  default_amount = 3,
  -- NOTE: `at_edge = 'wrap'` is not supported on Kitty terminal
  ---@type SmartSplitsAtEdgeBehavior
  at_edge = "wrap",
  ---@type SmartSplitsFloatWinBehavior
  float_win_behavior = "previous",
  move_cursor_same_row = false,
  cursor_follows_swapped_bufs = false,
  ignored_events = {
    "BufEnter",
    "WinEnter",
  },
  ---@type SmartSplitsMultiplexerType|false
  multiplexer_integration = nil,
  disable_multiplexer_nav_when_zoomed = true,
  kitty_password = nil,
  zellij_move_focus_or_tab = false,
}

return opts
