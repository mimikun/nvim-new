--- @alias blink.cmp.WindowBorderChar string | table
--- @alias blink.cmp.WindowBorder nil | 'single' | 'double' | 'rounded' | 'solid' | 'shadow' | 'bold' | 'padded' | 'none' | blink.cmp.WindowBorderChar[] When set to `nil`, uses the `vim.o.winborder` value on nvim 0.11+

---@module 'blink.cmp'
---@type blink.cmp.SignatureConfig
local signature = {
  --require("plugins.blink-cmp.opts.signature"),
  enabled = false,
  ---@type blink.cmp.SignatureTriggerConfig
  trigger = {
    enabled = true,
    show_on_keyword = false,
    blocked_trigger_characters = {},
    blocked_retrigger_characters = {},
    show_on_trigger_character = true,
    show_on_insert = false,
    show_on_insert_on_trigger_character = true,
    --show_on_accept = false,
    --show_on_accept_on_trigger_character = true,
  },
  ---@type blink.cmp.SignatureWindowConfig
  window = {
    min_width = 1,
    max_width = 100,
    max_height = 10,
    ---@type blink.cmp.WindowBorder
    border = nil,
    winblend = 0,
    winhighlight = "Normal:BlinkCmpSignatureHelp,FloatBorder:BlinkCmpSignatureHelpBorder",
    scrollbar = false,
    direction_priority = { "n", "s" },
    --direction_priority = function()
    --  if condition then
    --    return { "n", "s" }
    --  end
    --  return { "s", "n" }
    --end,

    -- Disable if you run into performance issues
    treesitter_highlighting = true,
    show_documentation = true,
  },
}

return signature
