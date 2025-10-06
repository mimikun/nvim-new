---@type table
local opts = {
  search_extensions = {
    ".js",
    ".ts",
    ".jsx",
    ".tsx",
  },
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local css_vars = {
  name = "css-vars",
  enabled = true,
  module = "css-vars.blink",
  opts = opts,
}

return css_vars
