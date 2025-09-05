---@type NeogitConfig
local opts = {
  disable_hint = false,
  disable_context_highlighting = false,
  disable_signs = false,
  ---@type NeogitGraphStyle "ascii" | "unicode" | "kitty"
  graph_style = "ascii",
  process_spinner = false,
  highlight = {
    italic = true,
    bold = true,
    underline = true,
  },
  notification_icon = "󰊢",
  signs = {
    hunk = { "", "" },
    item = { ">", "v" },
    section = { ">", "v" },
  },
}

return opts
