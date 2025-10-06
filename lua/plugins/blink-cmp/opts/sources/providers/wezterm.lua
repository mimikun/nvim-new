---@type blink-cmp-wezterm.Opts
local opts = {
  all_panes = true,
  capture_history = true,
  triggered_only = false,
  trigger_chars = { "." },
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local wezterm = {
  name = "wezterm",
  enabled = true,
  module = "blink-cmp-wezterm",
  opts = opts,
}

return wezterm
