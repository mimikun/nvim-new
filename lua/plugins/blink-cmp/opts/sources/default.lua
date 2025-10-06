--local settings = require("config.settings")
local is_home = false

---@type blink.cmp.SourceList
local default = {
  "ecolog",
  "lsp",
  "path",
  "snippets",
  "buffer",
  "yank",
  "dictionary",
  "spell",
  --"ripgrep",
  "tmux",
  "wezterm",
  -- NOTE: blink-compat sources
}

if is_home then
  table.insert(default, "copilot")
  table.insert(default, "avante")
end

--if settings.use_github_copilot then
--  table.insert(default, "copilot")
--end
--
--if settings.use_avante then
--  table.insert(default, "avante")
--end

return default
