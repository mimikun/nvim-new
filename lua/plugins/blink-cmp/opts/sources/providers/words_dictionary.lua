---@type table
local opts = {
  -- The number of characters required to trigger completion.
  -- Set this higher if completion is slow, 3 is default.
  dictionary_search_threshold = 3,
  -- See above
  score_offset = 0,
  -- See above
  definition_pointers = {
    "!",
    "&",
    "^",
  },
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local words_dictionary = {
  name = "blink-cmp-words",
  enabled = true,
  module = "blink-cmp-words.dictionary",
  opts = opts,
}

return words_dictionary
