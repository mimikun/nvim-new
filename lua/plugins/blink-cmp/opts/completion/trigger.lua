---@type blink.cmp.CompletionTriggerConfig
local trigger = {
  prefetch_on_insert = true,
  show_in_snippet = true,
  show_on_backspace = false,
  show_on_backspace_in_keyword = false,
  show_on_backspace_after_accept = true,
  show_on_backspace_after_insert_enter = true,
  show_on_keyword = true,
  show_on_trigger_character = true,
  show_on_insert = false,
  show_on_blocked_trigger_characters = {
    " ",
    "\n",
    "\t",
  },
  show_on_accept_on_trigger_character = true,
  show_on_insert_on_trigger_character = true,
  show_on_x_blocked_trigger_characters = {
    "'",
    '"',
    "(",
    "{",
    "[",
  },
}

return trigger
