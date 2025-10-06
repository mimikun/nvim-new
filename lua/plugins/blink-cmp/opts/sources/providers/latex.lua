---@type table
local opts = {
  -- set to true to insert the latex command instead of the symbol
  insert_command = false,
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local latex = {
  name = "Latex",
  enabled = true,
  module = "blink-cmp-latex",
  opts = opts,
}

return latex
