---@type table
local opts = {
  minLength = 5,
  onlyCurrentFiletype = true,
  trigger_characters = { '"' },
  kind_icon = "󰅍",
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local yank = {
  name = "yank",
  enabled = true,
  module = "blink-yanky",
  opts = opts,
}

return yank
