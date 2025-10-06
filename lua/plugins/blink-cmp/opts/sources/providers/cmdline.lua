---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local cmdline = {
  name = "cmdline",
  -- ignores cmdline completions when executing shell commands
  enabled = function()
    return vim.fn.getcmdtype() ~= ":" or not vim.fn.getcmdline():match("^[%%0-9,'<>%-]*!")
  end,
  module = "blink.cmp.sources.cmdline",
  min_keyword_length = function(ctx)
    if ctx.mode == "cmdline" and string.find(ctx.line, " ") == nil then
      return 3
    end
    return 0
  end,
}

return cmdline
