---@type blink.cmp.PathOpts
local opts = {
  trailing_slash = true,
  label_trailing_slash = true,
  get_cwd = function(context)
    return vim.fn.expand(("#%d:p:h"):format(context.bufnr))
  end,
  show_hidden_files_by_default = false,
  -- Treat `/path` as starting from the current working directory (cwd) instead of the root of your filesystem
  ignore_root_slash = false,
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local path = {
  name = "path",
  enabled = true,
  module = "blink.cmp.sources.path",
  score_offset = 3,
  fallbacks = { "buffer" },
  opts = opts,
}

return path
