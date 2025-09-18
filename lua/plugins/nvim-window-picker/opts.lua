---@type table
local opts = {
  ---@type "statusline-winbar" | "floating-big-letter" | "floating-letter"
  hint = "statusline-winbar",
  selection_chars = "FJDKSLA;CMRUEIWOQP",
  picker_config = {
    handle_mouse_click = false,
    statusline_winbar_picker = {
      selection_display = function(char)
        return "%=" .. char .. "%="
      end,
      ---@type "always" | "never" | "smart"
      use_winbar = "never",
    },

    floating_big_letter = {
      font = "ansi-shadow",
    },
  },
  show_prompt = true,
  prompt_message = "Pick window: ",
  filter_func = nil,
  filter_rules = {
    include_current_win = false,
    include_unfocusable_windows = false,
    bo = {
      filetype = {
        "NvimTree",
        "neo-tree",
        "notify",
        "snacks_notif",
      },
      buftype = {
        "terminal",
      },
    },
  },
}

return opts
