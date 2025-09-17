---@type LazyKeysSpec[]
local keys = {
  {
    "<F5>",
    function()
      require("dap").continue()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<F10>",
    function()
      require("dap").step_over()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<F11>",
    function()
      require("dap").step_into()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<F12>",
    function()
      require("dap").step_out()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<Leader>b",
    function()
      require("dap").toggle_breakpoint()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<Leader>B",
    function()
      require("dap").set_breakpoint()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<Leader>lp",
    function()
      require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<Leader>dr",
    function()
      require("dap").repl.open()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<Leader>dl",
    function()
      require("dap").run_last()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<Leader>dh",
    function()
      require("dap.ui.widgets").hover()
    end,
    mode = { "n", "v" },
    desc = "",
    { silent = true },
  },
  {
    "<Leader>dp",
    function()
      require("dap.ui.widgets").preview()
    end,
    mode = { "n", "v" },
    desc = "",
    { silent = true },
  },
  {
    "<Leader>df",
    function()
      local widgets = require("dap.ui.widgets")
      widgets.centered_float(widgets.frames)
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<Leader>ds",
    function()
      local widgets = require("dap.ui.widgets")
      widgets.centered_float(widgets.scopes)
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
}

return keys
