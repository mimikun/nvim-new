---@module 'blink-cmp-conventional-commits'
---@type blink-cmp-conventional-commits.Options
local opts = {}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local conventional_commits = {
  name = "Conventional Commits",
  enabled = function()
    return vim.bo.filetype == "gitcommit"
  end,
  module = "blink-cmp-conventional-commits",
  opts = opts,
}

return conventional_commits
