---@type MasonSettings
local opts = {
  ---@type string "prepend" | "append" | "skip"
  PATH = "prepend",
  max_concurrent_installers = 4,
  registries = {
    "github:mason-org/mason-registry",
    "github:Crashdummyy/mason-registry",
  },
  ui = {
    -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
    -- Defaults to `:h 'winborder'` if nil.
    border = nil,
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
}

return opts
