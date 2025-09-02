---@type table
local opts = {
  icons = {
    style = {
      up_to_date = "|  ",
      outdated = "|  ",
      invalid = "|  ",
    },
  },
  ---@type string "npm" | "yarn" | "pnpm"
  package_manager = "pnpm",
  hide_up_to_date = false,
  hide_unstable_versions = false,
  timeout = 3000,
}

return opts
