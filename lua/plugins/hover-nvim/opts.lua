---@type (string|Hover.Config.Provider)[]
local providers = {
  {
    module = "hover.providers.diagnostic",
    priority = 1001,
    --name = "Diags",
  },
  {
    module = "hover.providers.lsp",
    priority = 1000,
    --name = "Lsps"
  },
  {
    module = "hover.providers.dap",
    priority = 1002,
    --name = "Daps",
  },
  {
    module = "hover.providers.man",
    priority = 150,
    --name = "Mans",
  },
  {
    module = "hover.providers.dictionary",
    priority = 100,
    --name = "Dicts",
  },
  {
    module = "hover.providers.gh",
    priority = 200,
    --name = "Ghs",
  },
  {
    module = "hover.providers.gh_user",
    priority = 200,
    --name = "Gh-Users",
  },
  {
    module = "hover.providers.jira",
    priority = 175,
    --name = "Jiras",
  },
  {
    module = "hover.providers.fold_preview",
    priority = 1003,
    --name = "Folds",
  },
  {
    module = "hover.providers.highlight",
    --priority =
    --name =
  },
}

---@type (string|Hover.Config.Provider)[]
local mouse_providers = {
  {
    module = "hover.providers.lsp",
    priority = 1000,
    --name = "Lsps"
  },
}

---@type Hover.Config
local opts = {
  ---@type (string|Hover.Config.Provider)[]
  providers = providers,
  ---@type vim.api.keyset.win_config
  preview_opts = {
    border = "single",
  },
  ---@type boolean
  preview_window = false,
  ---@type boolean
  title = true,
  ---@type (string|Hover.Config.Provider)[]
  mouse_providers = mouse_providers,
  ---@type integer
  mouse_delay = 1000,
}

return opts
