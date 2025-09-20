---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>T",
    "",
    desc = "+timers",
    { silent = true },
  },
  {
    "<leader>Ta",
    function()
      require("timers.ui").active_timers()
    end,
    desc = "Active timers",
    { silent = true },
  },
  {
    "<leader>Td",
    function()
      require("timers.ui").dashboard()
    end,
    desc = "Dashboard",
    { silent = true },
  },
  {
    "<leader>Tn",
    function()
      require("timers.ui").create_timer()
    end,
    desc = "New timer",
    { silent = true },
  },
  {
    "<leader>Tc",
    function()
      require("timers.ui").cancel()
    end,
    desc = "Cancel a timer",
    { silent = true },
  },
  {
    "<leader>TC",
    function()
      require("timers.ui").cancel_all()
    end,
    desc = "Cancel all timers",
    { silent = true },
  },
  {
    "<leader>Tr",
    function()
      require("timers.ui").resume()
    end,
    desc = "Resume a timer",
    { silent = true },
  },
  {
    "<leader>Tp",
    function()
      require("timers.ui").pause()
    end,
    desc = "Pause a timer",
    { silent = true },
  },
}

return keys
