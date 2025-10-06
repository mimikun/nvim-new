---@module 'blink.cmp'
---@type blink.cmp.AppearanceConfig
local appearance = {
  ---@type number
  highlight_ns = vim.api.nvim_create_namespace("blink_cmp"),
  ---@type boolean
  use_nvim_cmp_as_default = false,
  ---@type 'mono' | 'normal'
  nerd_font_variant = "mono",
  ---@type table<string, string>
  kind_icons = require("plugins.blink-cmp.opts.appearance.kind_icons"),
}

return appearance
