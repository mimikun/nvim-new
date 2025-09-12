---@type table
local builds = {
  from_global = "pnpm install -g mcp-hub@latest",
  from_local = "bundled_build.lua",
}

return builds
