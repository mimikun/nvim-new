---@type blink-cmp-tmux.Opts
local opts = {
  all_panes = false,
  capture_history = false,
  -- only suggest completions from `tmux` if the `trigger_chars` are used
  triggered_only = false,
  trigger_chars = { "." },
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local tmux = {
  name = "tmux",
  enabled = true,
  module = "blink-cmp-tmux",
  opts = opts,
}

return tmux
