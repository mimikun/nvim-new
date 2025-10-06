---@type blink.cmp.CompleteFuncOpts
local opts = {
  complete_func = function()
    return vim.bo.omnifunc
  end,
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local omni = {
  name = "omni",
  enabled = function()
    return vim.bo.omnifunc ~= "v:lua.vim.lsp.omnifunc"
  end,
  module = "blink.cmp.sources.complete_func",
  opts = opts,
}

return omni
