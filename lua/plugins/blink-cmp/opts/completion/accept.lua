---@type blink.cmp.CompletionAcceptConfig
local accept = {
  dot_repeat = true,
  create_undo_point = true,
  resolve_timeout_ms = 100,
  ---@type blink.cmp.AutoBracketsConfig
  auto_brackets = {
    enabled = true,
    default_brackets = { "(", ")" },
    override_brackets_for_filetypes = {},
    ---@type blink.cmp.AutoBracketResolutionConfig
    kind_resolution = {
      enabled = true,
      blocked_filetypes = {
        "typescriptreact",
        "javascriptreact",
        "vue",
      },
    },
    ---@type blink.cmp.AutoBracketSemanticTokenResolutionConfig
    semantic_token_resolution = {
      enabled = true,
      blocked_filetypes = {
        "java",
      },
      timeout_ms = 400,
    },
  },
}

return accept
