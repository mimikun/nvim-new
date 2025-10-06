---@module 'blink-cmp-dictionary'
---@type blink-cmp-dictionary.Options
local opts = {
  async = true,
  dictionary_files = nil,
  dictionary_directories = nil,
  decapitalize_first = false,
  decapitalize_whole_word = false,
  kind_icons = {
    Dict = "󰘝",
  },
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local dictionary = {
  name = "Dict",
  enabled = true,
  module = "blink-cmp-dictionary",
  -- Make sure this is at least 2.
  -- 3 is recommended
  min_keyword_length = 3,
  opts = opts,
}

return dictionary
