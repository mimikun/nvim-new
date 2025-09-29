---@type sidekick.Config
local opts = {
  jump = {
    jumplist = true,
  },
  signs = {
    enabled = true,
    icon = " ",
  },
  nes = {
    enabled = function(buf)
      return vim.g.sidekick_nes ~= false and vim.b.sidekick_nes ~= false
    end,
    debounce = 100,
    trigger = {
      events = {
        "InsertLeave",
        "TextChanged",
        "User SidekickNesDone",
      },
    },
    clear = {
      events = {
        "TextChangedI",
        "BufWritePre",
        "InsertEnter",
      },
      esc = true,
    },
    ---@type sidekick.diff.Opts
    diff = {
      ---@type "words" | "chars" | false
      inline = "words",
    },
  },
  cli = {
    watch = true,
    win = {
      ---@type "vertical" | "horizontal"
      layout = "vertical",
      ---@type "left" | "bottom" | "top" | "right"
      position = "right",
      ---@type LazyK
      keys = {},
    },
  },
}

return opts
