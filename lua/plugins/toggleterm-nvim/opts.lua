---@type ToggleTermConfig
local opts = {
  size = 12,
  clear_env = false,
  ---@type '"horizontal"' | '"vertical"' | '"float"'
  direction = "horizontal",
  autochdir = false,
  winbar = {
    enabled = false,
    name_formatter = function(term)
      return fmt("%d:%s", term.id, term:_display_name())
    end,
  },
  float_opts = {
    winblend = 0,
    ---@type '"left"' | '"center"' | '"right"'
    title_pos = "left",
  },
  responsiveness = {
    horizontal_breakpoint = 0,
  },
}

return opts
