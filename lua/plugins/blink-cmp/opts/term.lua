---@module 'blink.cmp'
---@type blink.cmp.TermConfig
local term = {
  --enabled = true,
  enabled = false,
  keymap = { preset = "inherit" },
  --keymap = { ["<Tab>"] = { "show", "accept" } },
  sources = {},
  completion = {
    trigger = {
      show_on_blocked_trigger_characters = {},
      show_on_x_blocked_trigger_characters = nil,
    },
    list = {
      selection = {
        preselect = nil,
        auto_insert = nil,
      },
    },
    menu = {
      --auto_show = true,
      auto_show = nil,
      draw = {
        columns = {
          { "label", "label_description", gap = 1 },
        },
      },
    },
    ghost_text = {
      enabled = nil,
    },
  },
}

return term
