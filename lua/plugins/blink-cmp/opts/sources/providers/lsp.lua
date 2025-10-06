---@type table
local opts = {
  tailwind_color_icon = "██",
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local lsp = {
  name = "LSP",
  enabled = true,
  module = "blink.cmp.sources.lsp",
  fallbacks = {
    "buffer",
  },
  opts = opts,
}

return lsp
