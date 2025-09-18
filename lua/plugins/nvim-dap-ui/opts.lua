---@alias dapui.Action "expand"|"open"|"remove"|"edit"|"repl"|"toggle"
---@alias dapui.FloatingAction "close"

---@type dapui.Config
local opts = {
  ---@type dapui.Config.icons
  icons = {
    expanded = "",
    collapsed = "",
    current_frame = "",
  },
  ---@type table<dapui.Action, string|string[]>
  mappings = {
    edit = "e",
    expand = {
      "<CR>",
      "<2-LeftMouse>",
    },
    open = "o",
    remove = "d",
    repl = "r",
    toggle = "t",
  },
  ---@type table<string, table<dapui.Action, string|string[]>>
  element_mappings = {},
  expand_lines = true,
  ---@type dapui.Config.layout[]
  layouts = {
    {
      ---@type string[]|dapui.Config.layout.element[]
      elements = {
        {
          ---@type string
          id = "scopes",
          ---@type number
          size = 0.25,
        },
        {
          ---@type string
          id = "breakpoints",
          ---@type number
          size = 0.25,
        },
        {
          ---@type string
          id = "stacks",
          ---@type number
          size = 0.25,
        },
        {
          ---@type string
          id = "watches",
          ---@type number
          size = 0.25,
        },
      },
      ---@type "left"|"right"|"top"|"bottom"
      position = "left",
      ---@type number
      size = 40,
    },
    {
      elements = {
        {
          ---@type string
          id = "repl",
          ---@type number
          size = 0.5,
        },
        {
          ---@type string
          id = "console",
          ---@type number
          size = 0.5,
        },
      },
      position = "bottom",
      size = 10,
    },
  },
  ---@type dapui.Config.floating
  floating = {
    ---@type string|string[]
    border = "single",
    ---@type table<dapui.FloatingAction, string|string[]>
    mappings = {
      ["close"] = {
        "q",
        "<Esc>",
      },
    },
    ---@type number
    max_height = nil,
    ---@type number
    max_width = nil,
  },
  ---@type dapui.Config.controls
  controls = {
    ---@type boolean
    enabled = true,
    ---@type string
    element = "repl",
    ---@type dapui.Config.controls.icons
    icons = {
      disconnect = "",
      pause = "",
      play = "",
      run_last = "",
      step_back = "",
      step_into = "",
      step_out = "",
      step_over = "",
      terminate = "",
    },
  },
  ---@type dapui.Config.render
  render = {
    ---@type integer
    max_type_length = nil,
    ---@type integer
    max_value_lines = 100,
    ---@type integer
    indent = 1,
    ---@type fun(a: dapui.types.Variable, b: dapui.types.Variable):boolean
    --sort_variables = function() end,
  },
}

return opts
