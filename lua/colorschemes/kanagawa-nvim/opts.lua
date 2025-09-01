---@type KanagawaConfig
local opts = {
  compile = true,
  commentStyle = { italic = true },
  keywordStyle = { italic = true },
  transparent = vim.g.transparent_enabled,
  dimInactive = false,
  ---@type { dark: string, light: string }
  background = { dark = "wave", light = "lotus" },
  theme = "wave",
}

return opts
