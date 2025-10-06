---@module 'blink.cmp'
---@type blink.cmp.BufferOpts
local opts = {
  get_bufnrs = function()
    return vim
      .iter(vim.api.nvim_list_wins())
      :map(function(win)
        return vim.api.nvim_win_get_buf(win)
      end)
      :filter(function(buf)
        return vim.bo[buf].buftype ~= "nofile"
      end)
      :totable()
  end,
  get_search_bufnrs = function()
    return { vim.api.nvim_get_current_buf() }
  end,
  max_sync_buffer_size = 20000,
  max_async_buffer_size = 200000,
  max_total_buffer_size = 500000,
  retention_order = {
    "focused",
    "visible",
    "recency",
    "largest",
  },
  use_cache = true,
  enable_in_ex_commands = false,
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local buffer = {
  name = "buffer",
  enabled = true,
  module = "blink.cmp.sources.buffer",
  score_offset = -3,
  opts = opts,
}

return buffer
