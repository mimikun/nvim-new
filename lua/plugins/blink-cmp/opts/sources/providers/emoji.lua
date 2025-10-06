---@type table
local opts = {
  -- Insert emoji (default) or complete its name
  insert = true,
  ---@type string|table|fun():table
  trigger = function()
    return { ":" }
  end,
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local emoji = {
  name = "Emoji",
  enabled = true,
  module = "blink-emoji",
  -- Tune by preference
  score_offset = 15,
  opts = opts,
  should_show_items = function()
    return vim.tbl_contains(
      -- Enable emoji completion only for git commits and markdown.
      -- By default, enabled for all file-types.
      { "gitcommit", "markdown" },
      vim.o.filetype
    )
  end,
}

return emoji
