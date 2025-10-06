---@module 'blink.cmp'
---@type blink.cmp.CompletionConfig
local completion = {
  ---@type blink.cmp.CompletionKeywordConfig
  keyword = require("plugins.blink-cmp.opts.completion.keyword"),
  ---@type blink.cmp.CompletionTriggerConfig
  trigger = require("plugins.blink-cmp.opts.completion.trigger"),
  ---@type blink.cmp.CompletionListConfig
  list = require("plugins.blink-cmp.opts.completion.list"),
  ---@type blink.cmp.CompletionAcceptConfig
  accept = require("plugins.blink-cmp.opts.completion.accept"),
  ---@type blink.cmp.CompletionMenuConfig
  menu = require("plugins.blink-cmp.opts.completion.menu"),
  ---@type blink.cmp.CompletionDocumentationConfig
  documentation = require("plugins.blink-cmp.opts.completion.documentation"),
  ---@type blink.cmp.CompletionGhostTextConfig
  ghost_text = require("plugins.blink-cmp.opts.completion.ghost_text"),
}

return completion
