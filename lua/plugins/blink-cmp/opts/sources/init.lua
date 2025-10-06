--- @alias blink.cmp.SourceList string[] | fun(): string[]
--- @alias blink.cmp.SourceListPerFiletype { inherit_defaults?: boolean, [number]: string } | fun(): ({ inherit_defaults?: boolean, [number]: string })

---@module 'blink.cmp'
---@type blink.cmp.SourceConfig
local sources = {
  ---@type blink.cmp.SourceList
  default = require("plugins.blink-cmp.opts.sources.default"),
  ---@type table<string, blink.cmp.SourceListPerFiletype>
  per_filetype = require("plugins.blink-cmp.opts.sources.per_filetype"),
  ---@type fun(ctx: blink.cmp.Context, items: blink.cmp.CompletionItem[]): blink.cmp.CompletionItem[]
  transform_items = function(_, items)
    return items
  end,
  ---@type number | fun(ctx: blink.cmp.Context): number
  min_keyword_length = 0,
  ---@type table<string, blink.cmp.SourceProviderConfig>
  providers = require("plugins.blink-cmp.opts.sources.providers"),
}

return sources
