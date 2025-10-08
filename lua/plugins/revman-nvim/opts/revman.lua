---@type table
local opts = {
  database_path = vim.fn.stdpath("state") .. "/revman/revman.db",
  -- days to keep PRs (0 = keep forever)
  data_retention_days = 30,
  -- minutes between background syncs (0 = disable)
  background_sync_frequency = 15,
  ---@type string | "vimSelect" | "telescope" | "snacks"
  picker = "telescope",
  ---@type "info" | "warn" | "error"
  log_level = "warn",
}

return opts
