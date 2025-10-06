-- For `snippets.preset == 'luasnip'`
---@type table
local opts = {
  -- Whether to use show_condition for filtering snippets
  use_show_condition = true,
  -- Whether to show autosnippets in the completion list
  show_autosnippets = true,
  -- Whether to prefer docTrig placeholders over trig when expanding regTrig snippets
  prefer_doc_trig = false,
  -- Whether to put the snippet description in the label description
  use_label_description = false,
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local snippets = {
  name = "snippets",
  enabled = true,
  module = "blink.cmp.sources.snippets",
  score_offset = -1, -- receives a -3 from top level snippets.score_offset
  opts = opts,
}

return snippets
