---@type table
local opts = {}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local kanban = {
  name = "kanban",
  enabled = true,
  module = "kanban.fn.cmp.blink.cmp",
  score_offset = 15,
  opts = opts,
}

return kanban
