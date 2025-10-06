---@type table
local opts = {
  -- Insert nerdfont icon (default) or complete its name
  insert = true,
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local nerdfont = {
  name = "Nerd Fonts",
  enabled = true,
  module = "blink-nerdfont",
  -- Tune by preference
  score_offset = 15,
  opts = opts,
}

return nerdfont
