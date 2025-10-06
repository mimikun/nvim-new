--- @alias blink.cmp.WindowBorderChar string | table
--- @alias blink.cmp.WindowBorder nil | 'single' | 'double' | 'rounded' | 'solid' | 'shadow' | 'bold' | 'padded' | 'none' | blink.cmp.WindowBorderChar[] When set to `nil`, uses the `vim.o.winborder` value on nvim 0.11+

---@type blink.cmp.CompletionMenuConfig
local menu = {
  enabled = true,
  min_width = 15,
  max_height = 10,
  ---@type blink.cmp.WindowBorder
  border = nil,
  winblend = 0,
  winhighlight = "Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
  scrolloff = 2,
  scrollbar = true,
  direction_priority = {
    "s",
    "n",
  },
  -- Can accept a function if you need more control
  -- direction_priority = function()
  --   if condition then return { 'n', 's' } end
  --   return { 's', 'n' }
  -- end,

  auto_show = true,
  auto_show_delay_ms = 0,
  cmdline_position = function()
    if vim.g.ui_cmdline_pos ~= nil then
      local pos = vim.g.ui_cmdline_pos -- (1, 0)-indexed
      return { pos[1] - 1, pos[2] }
    end
    local height = (vim.o.cmdheight == 0) and 1 or vim.o.cmdheight
    return { vim.o.lines - height, 0 }
  end,
  ---@type blink.cmp.Draw
  draw = require("plugins.blink-cmp.opts.completion.menu.draw"),
}

return menu
