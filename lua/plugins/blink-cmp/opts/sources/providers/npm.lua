---@module "blink-cmp-npm"
---@type blink-cmp-npm.Options
local opts = {
  --Ignore versions that match any of these strings.
  ---@type string[]
  ignore = {},
  --Ignore versions that do not match semantic versioning.
  ---@type boolean
  only_semantic_versions = true,
  --When suggesting versions, only show the latest.
  ---@type boolean
  only_latest_version = false,
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local npm = {
  name = "npm",
  enabled = true,
  module = "blink-cmp-npm",
  async = true,
  score_offset = 100,
  opts = opts,
}

return npm
