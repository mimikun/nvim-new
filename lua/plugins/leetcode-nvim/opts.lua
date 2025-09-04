---@alias lc.lang
---| "cpp"
---| "java"
---| "python"
---| "python3"
---| "c"
---| "csharp"
---| "javascript"
---| "typescript"
---| "php"
---| "swift"
---| "kotlin"
---| "dart"
---| "golang"
---| "ruby"
---| "scala"
---| "rust"
---| "racket"
---| "erlang"
---| "elixir"
---| "bash"

---@alias lc.picker { provider?: "fzf-lua" | "telescope" | "snacks-picker" }

---@type lc.UserConfig
local opts = {
  ---@type lc.lang
  lang = "cpp",

  ---@type lc.storage
  storage = {
    home = vim.fn.stdpath("data") .. "/leetcode",
    cache = vim.fn.stdpath("cache") .. "/leetcode",
  },

  ---@type table<string, boolean>
  plugins = {
    non_standalone = false,
  },

  ---@type lc.picker
  picker = {
    provider = nil,
  },

  ---@type boolean
  image_support = true,
}

return opts
