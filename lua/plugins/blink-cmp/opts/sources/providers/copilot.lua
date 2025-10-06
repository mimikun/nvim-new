---@type table
local opts = {
  max_completions = 3,
  max_attempts = 4,
  kind_name = "Copilot",
  kind_icon = " ",
  kind_hl = false,
  debounce = 200,
  auto_refresh = {
    backward = true,
    forward = true,
  },
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local copilot = {
  name = "copilot",
  enabled = true,
  module = "blink-copilot",
  score_offset = 100,
  async = true,
  opts = opts,
}

return copilot
