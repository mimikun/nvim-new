---@type LspToggle.Opts
local opts = {
  max_height = 20,
  max_width = 30,
  ---@type string[]
  exclude_lsp = {},
  ---@type string[] | "double" | "none" | "rounded" | "shadow" | "single" | "solid"
  border = { "╔", "-", "╗", "║", "╝", "═", "╚", "║" },
  ---@type string  |  "file_type"  |  "file_name"
  cache_type = "file_type",
  ---@type boolean
  exclusive_mode = false,
}

return opts
