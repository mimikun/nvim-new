---@module 'roslyn.config'
---@type RoslynNvimConfig
local opts = {
  ---@type "auto" | "roslyn" | "off"
  filewatching = "auto",
  choose_target = nil,
  ignore_target = nil,
  broad_search = false,
  lock_target = false,
  silent = false,
}

return opts
