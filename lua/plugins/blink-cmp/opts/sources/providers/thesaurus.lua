---@type table
local opts = {
  score_offset = 0,
  definition_pointers = {
    "!",
    "&",
    "^",
  },
  similarity_pointers = {
    "&",
    "^",
  },
  similarity_depth = 2,
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local thesaurus = {
  name = "blink-cmp-words",
  enabled = true,
  module = "blink-cmp-words.thesaurus",
  opts = opts,
}

return thesaurus
