---@type KanagawaConfig
local opts = {
  ---@type string "auto" | "ink" | "canvas"
  _theme = "auto",
  transparent = vim.g.transparent_enabled,
  gutter = false,
  dim_inactive = false,
  cache = true,
  styles = {
    comment = { italic = true },
  },
  integrations = {
    wezterm = {
      enabled = false,
      path = (os.getenv("TEMP") or "/tmp") .. "/nvim-theme",
    },
  },
}

return opts
