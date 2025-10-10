---@type table
local opts = {
  layout = {
    ---@type string | "left" | "right"
    direction = "left",
    ---@type "adaptive" | integer | number
    width = 0.25,
  },
  diff_cur_node = {
    enabled = true,
    ---@type number
    split_percent = 0.3,
  },
  auto_attach = {
    enabled = true,
    excluded_ft = { "oil" },
  },
}

return opts
