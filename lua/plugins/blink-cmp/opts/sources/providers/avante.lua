---@module "blink-cmp-avante"
---@type blink-cmp-avante.Options
local opts = {
  kind_icons = {
    Avante = "󰖷",
    AvanteCmd = "",
    AvanteMention = "",
    AvanteShortcut = "",
  },
  avante = {
    command = { triggers = { "/" } },
    mention = { triggers = { "@" } },
    shortcut = { triggers = { "#" } },
  },
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local avante = {
  name = "Avante",
  enabled = false,
  module = "blink-cmp-avante",
  opts = opts,
}

return avante
