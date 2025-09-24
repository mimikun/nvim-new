---@type table
local ui = {
  width = 60,
  height = 18,
  border = "rounded",
  zindex = 200,
  ---@type "overlay" | "nui"
  value_input = "overlay",
  padding = "  ",
  icons = {
    checked = "",
    unchecked = "",
  },
}

return ui
