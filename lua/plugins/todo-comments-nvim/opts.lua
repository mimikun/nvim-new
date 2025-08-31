---@type TodoOptions
local opts = {
  keywords = {
    FIX = {
      icon = " ",
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
    },
    TODO = {
      icon = " ",
    },
    HACK = {
      icon = " ",
    },
    WARN = {
      icon = " ",
      alt = { "WARNING", "XXX" },
    },
    PERF = {
      icon = " ",
      alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" },
    },
    NOTE = {
      icon = " ",
      alt = { "INFO" },
    },
    TEST = {
      icon = "⏲ ",
      alt = { "TESTING", "PASSED", "FAILED" },
    },
  },
}

return opts
