---@type blink.cmp.CompletionListConfig
local list = {
  max_items = 200,
  ---@type blink.cmp.CompletionListSelectionConfig
  selection = {
    preselect = true,
    auto_insert = true,
  },
  ---@type blink.cmp.CompletionListCycleConfig
  cycle = {
    from_bottom = true,
    from_top = true,
  },
}

return list
