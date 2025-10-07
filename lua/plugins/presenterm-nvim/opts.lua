---@type PresenterMConfig
local opts = {
  ---@type string
  slide_marker = "<!-- end_slide -->",
  ---@type PresenterMPartialsConfig
  partials = {
    ---@type string
    directory = "_partials",
    ---@type boolean
    resolve_relative = true,
  },
  ---@type PresenterMPreviewConfig
  preview = {
    ---@type string
    command = "presenterm",
    --command = "presenterm -xX",
    ---@type boolean
    presentation_preview_sync = false,
    --presentation_preview_sync = true,
    ---@type boolean
    login_shell = true,
  },
  ---@type PresenterMPickerConfig
  picker = {
    ---@type string | "telescope" | "snacks" | "builtin"
    provider = "telescope",
  },
  ---@type PresenterMTelescopeConfig
  telescope = {
    ---@type string
    theme = "dropdown",
    ---@type table
    layout_config = {
      width = 0.8,
      height = 0.6,
    },
    ---@type boolean
    enable_preview = true,
  },
  -- ---@type PresenterMLayoutConfig
  -- layout = {
  --   ---@type table
  --   templates = {},
  -- },
  ---@type function | nil
  on_attach = nil,
  ---@type boolean
  default_keybindings = false,
}

return opts
