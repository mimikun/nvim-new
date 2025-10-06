--- @alias blink.cmp.Sort ("label" | "sort_text" | "kind" | "score" | "exact" | blink.cmp.SortFunction)

--- @alias blink.cmp.SortFunction fun(a: blink.cmp.CompletionItem, b: blink.cmp.CompletionItem): boolean | nil

--- @alias blink.cmp.FuzzyImplementationType
--- | 'prefer_rust_with_warning' (Recommended) If available, use the Rust implementation, automatically downloading prebuilt binaries on supported systems. Fallback to the Lua implementation when not available, emitting a warning message.
--- | 'prefer_rust' If available, use the Rust implementation, automatically downloading prebuilt binaries on supported systems. Fallback to the Lua implementation when not available.
--- | 'rust' Always use the Rust implementation, automatically downloading prebuilt binaries on supported systems. Error if not available.
--- | 'lua' Always use the Lua implementation

---@module 'blink.cmp'
---@type blink.cmp.FuzzyConfig
local fuzzy = {
  ---@type blink.cmp.FuzzyImplementationType
  implementation = "prefer_rust_with_warning",
  max_typos = function(keyword)
    return math.floor(#keyword / 4)
  end,
  use_proximity = true,
  -- It is recommended to put the "label" sorter as the primary sorter for the spell source.
  -- If you set use_cmp_spell_sorting to true, you may want to skip this step.
  ---@type blink.cmp.Sort[]
  sorts = {
    function(a, b)
      local sort = require("blink.cmp.fuzzy.sort")
      if a.source_id == "spell" and b.source_id == "spell" then
        return sort.label(a, b)
      end
    end,
    -- This is the normal default order, which we fall back to
    "score",
    "kind",
    "label",
  },
  ---@type blink.cmp.FuzzyFrecencyConfig
  frecency = {
    enabled = true,
    path = vim.fn.stdpath("state") .. "/blink/cmp/frecency.dat",
    unsafe_no_lock = false,
  },
  ---@type blink.cmp.PrebuiltBinariesConfig
  prebuilt_binaries = {
    download = true,
    ignore_version_mismatch = false,
    force_version = nil,
    force_system_triple = nil,
    extra_curl_args = {},
    proxy = {
      from_env = true,
      url = nil,
    },
  },
}

return fuzzy
