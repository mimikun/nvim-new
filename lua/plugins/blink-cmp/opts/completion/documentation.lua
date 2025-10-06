---@type blink.cmp.CompletionDocumentationConfig
local documentation = {
  -- Controls whether the documentation window will automatically show when selecting a completion item
  --auto_show = true,
  auto_show = false,
  -- Delay before showing the documentation window
  auto_show_delay_ms = 500,
  -- Delay before updating the documentation window when selecting a new item,
  -- while an existing item is still visible
  update_delay_ms = 50,
  -- Whether to use treesitter highlighting, disable if you run into performance issues
  treesitter_highlighting = true,
  -- Draws the item in the documentation window, by default using an internal treesitter based implementation
  draw = function(opts)
    opts.default_implementation()
  end,
  window = {
    min_width = 10,
    max_width = 80,
    max_height = 20,
    border = nil, -- Defaults to `vim.o.winborder` on nvim 0.11+ or 'padded' when not defined/<=0.10
    winblend = 0,
    winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc",
    -- Note that the gutter will be disabled when border ~= 'none'
    scrollbar = true,
    -- Which directions to show the documentation window,
    -- for each of the possible menu window directions,
    -- falling back to the next direction when there's not enough space
    direction_priority = {
      menu_north = { "e", "w", "n", "s" },
      menu_south = { "e", "w", "s", "n" },
    },
  },
}

return documentation
