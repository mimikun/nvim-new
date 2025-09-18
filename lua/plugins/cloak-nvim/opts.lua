---@type table
local patterns = {
  file_pattern = ".env*",
  cloak_pattern = {
    "=.+",
    "(a=).+",
    { "(b=).+" },
    { "(c=).+", replace = "[inner] %1" },
    -- The outer `replace` could also be specified here instead
  },
  replace = "[outer] %1",
}

---@type table
local opts = {
  enabled = true,
  cloak_character = "*",
  cloak_length = nil,
  patterns = patterns,
  uncloaked_line_num = nil,
  cloak_on_leave = false,
}

return opts
