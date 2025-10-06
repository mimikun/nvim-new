---@type blink.cmp.Draw
local draw = {
  -- Aligns the keyword you've typed to a component in the menu
  align_to = "label", -- or 'none' to disable, or 'cursor' to align to the cursor
  -- Left and right padding, optionally { left, right } for different padding on each side
  padding = 1,
  -- Gap between columns
  gap = 1,
  -- Priority of the cursorline highlight, setting this to 0 will render it below other highlights
  cursorline_priority = 10000,
  -- Appends an indicator to snippets label
  snippet_indicator = "~",
  -- Use treesitter to highlight the label text for the given list of sources
  treesitter = { "lsp" },
  columns = {
    { "kind_icon" },
    { "label", gap = 1 },
    --{ "label", "label_description", gap = 1 },
  },
  components = require("plugins.blink-cmp.opts.completion.menu.draw.components"),
}

return draw
