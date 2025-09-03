---@type table
local opts = {
  --If calm_down is true, clear all lens and highlighting When the cursor is out of the position range of the matched instance or any texts are changed
  calm_down = false,
  -- Only add lens for the nearest matched instance and ignore others
  nearest_only = false,
  -- When to open the floating window for the nearest lens.
  -- 'auto': floating window will be opened if room isn't enough for virtual text
  -- 'always': always use floating window instead of virtual text
  -- 'never': never use floating window for the nearest lens
  ---@type string "auto" | "always" | "never"
  nearest_float_when = "auto",
  -- Winblend of the nearest floating window. `:h winbl` for more details
  float_shadow_blend = 50,
  -- Priority of virtual text, set it lower to overlay others.
  -- `:h nvim_buf_set_extmark` for more details
  virt_priority = 100,
}

return opts
