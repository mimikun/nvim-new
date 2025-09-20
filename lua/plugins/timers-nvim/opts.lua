---@module "timers.config"
---@type Config
local opts = {
  ---@type TimerOpts
  default_timer = {
    icon = "󱎫",
    log_level = vim.log.levels.INFO,
    message = "Timer Finished!",
    title = "timers.nvim",
  },
  ---@type boolean
  persistent = false,
  ---@type DashboardOpts
  dashboard = {
    update_interval = 1000,
    width = 0.8,
    height = 0.8,
    ---@type "DiamFont" | "Terrace" | "tmplr"
    font = "DiamFont",
    fonts = {},
  },
}

return opts
