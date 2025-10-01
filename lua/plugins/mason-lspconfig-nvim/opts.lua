---@type MasonLspconfigSettings
local opts = {
  ---@type string[]
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
  },
  ---@type boolean | string[] | { exclude: string[] }
  automatic_enable = true,
  --automatic_enable = { "lua_ls", "vimls" },
  --automatic_enable = { exclude = { "rust_analyzer", "ts_ls" } },
}

return opts
