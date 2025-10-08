---@type MasonLspconfigSettings
local opts = {
  ---@type string[]
  ensure_installed = require("plugins.mason-lspconfig-nvim.opts.ensure_installed"),
  ---@type boolean | string[] | { exclude: string[] }
  automatic_enable = require("plugins.mason-lspconfig-nvim.opts.automatic_enable"),
}

return opts
