---@type table
local completion = {
  trigger = {
    show_on_blocked_trigger_characters = {},
    show_on_x_blocked_trigger_characters = {},
  },
  list = {
    selection = {
      preselect = true,
      auto_insert = true,
    },
  },
  menu = {
    --auto_show = true,
    auto_show = function(ctx, _)
      return ctx.mode == "cmdwin"
    end,
  },
  ghost_text = {
    enabled = true,
  },
}

return completion
