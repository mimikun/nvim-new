---@type table
local telescope_opts = {
  extensions = {
    revman = {
      ---@type string | "horizontal" | "vertical" | "center"
      layout_strategy = "horizontal",
      layout_config = {
        preview_width = 0.6,
        width = 0.9,
        height = 0.8,
      },
      ---@type string | "ascending" | "descending"
      sorting_strategy = "ascending",
    },
  },
}

return telescope_opts
