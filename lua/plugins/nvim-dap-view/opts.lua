---@alias dapview.CustomSection string
---@alias dapview.DefaultSection "breakpoints" | "exceptions" | "watches" | "repl" | "threads" | "console" | "scopes" | "sessions"
---@alias dapview.Section dapview.DefaultSection | dapview.CustomSection

---@alias dapview.CustomButton string
---@alias dapview.DefaultButton "play" | "step_into" | "step_over" | "step_out" | "step_back" | "run_last" | "terminate" | "disconnect"
---@alias dapview.Button dapview.CustomButton | dapview.DefaultButton

---@alias dapview.DefaultIcons dapview.DefaultButton | "pause"

---@class dapview.ButtonConfig
---@field render fun(session?: dap.Session): string Render the button (highlight and icon). Receives the current session as a param.
---@field action fun(clicks: integer, button: string, modifiers: string): nil Click handler. See `:help statusline`

---@class dapview.SectionConfig
---@field label string
---@field short_label string Label to be shown if there's not enough space to display the entire winbar
---@field keymap string
---@field action fun(): nil

---@class dapview.CustomSectionConfig : dapview.SectionConfig
---@field buffer fun(): integer Creates a new buffer for the section
---@field filetype string Filetype used by the section

---@module 'dap-view'
---@type dapview.Config
local opts = {
  ---@type dapview.WinbarConfig
  winbar = {
    ---@type boolean
    show = true,
    ---@type dapview.Section[]
    sections = {
      "watches",
      "scopes",
      "exceptions",
      "breakpoints",
      "threads",
      "repl",
    },
    ---@type dapview.Section
    default_section = "watches",
    ---@type table<dapview.Section,dapview.SectionConfig>
    base_sections = {
      breakpoints = {
        keymap = "B",
        label = "Breakpoints [B]",
        short_label = " [B]",
        action = function()
          require("dap-view.views").switch_to_view("breakpoints")
        end,
      },
      scopes = {
        keymap = "S",
        label = "Scopes [S]",
        short_label = "󰂥 [S]",
        action = function()
          require("dap-view.views").switch_to_view("scopes")
        end,
      },
      exceptions = {
        keymap = "E",
        label = "Exceptions [E]",
        short_label = "󰢃 [E]",
        action = function()
          require("dap-view.views").switch_to_view("exceptions")
        end,
      },
      watches = {
        keymap = "W",
        label = "Watches [W]",
        short_label = "󰛐 [W]",
        action = function()
          require("dap-view.views").switch_to_view("watches")
        end,
      },
      threads = {
        keymap = "T",
        label = "Threads [T]",
        short_label = "󱉯 [T]",
        action = function()
          require("dap-view.views").switch_to_view("threads")
        end,
      },
      repl = {
        keymap = "R",
        label = "REPL [R]",
        short_label = "󰯃 [R]",
        action = function()
          require("dap-view.repl").show()
        end,
      },
      sessions = {
        keymap = "K", -- I ran out of mnemonics
        label = "Sessions [K]",
        short_label = " [K]",
        action = function()
          require("dap-view.views").switch_to_view("sessions")
        end,
      },
      console = {
        keymap = "C",
        label = "Console [C]",
        short_label = "󰆍 [C]",
        action = function()
          require("dap-view.views").switch_to_view("console")
        end,
      },
    },
    ---@type table<dapview.CustomSection, dapview.CustomSectionConfig>
    custom_sections = {},
    ---@type dapview.ControlsConfig
    controls = {
      ---@type boolean
      enabled = false,
      ---@type 'left' | 'right'
      position = "right",
      ---@type dapview.Button[]
      buttons = {
        "play",
        "step_into",
        "step_over",
        "step_out",
        "step_back",
        "run_last",
        "terminate",
        "disconnect",
      },
      ---@type table<dapview.CustomButton, dapview.ButtonConfig>
      custom_buttons = {},
    },
  },
  ---@type dapview.WindowsConfig
  windows = {
    ---@type fun(): integer?
    --anchor = function() end,
    ---@type number
    height = 0.25,
    ---@type 'right' | 'left' | 'above' | 'below'
    position = "below",
    ---@type dapview.TerminalConfig
    terminal = {
      ---@type number
      width = 0.5,
      ---@type 'right' | 'left' | 'above' | 'below'
      position = "left",
      ---@type string[]
      hide = {},
      ---@type boolean
      start_hidden = true,
    },
  },
  ---@type dapview.IconsConfig
  icons = {
    disabled = "",
    disconnect = "",
    enabled = "",
    filter = "󰈲",
    negate = " ",
    pause = "",
    play = "",
    run_last = "",
    step_back = "",
    step_into = "",
    step_out = "",
    step_over = "",
    terminate = "",
  },
  ---@type dapview.HelpConfig
  help = {
    ---@type string|string[]
    border = nil,
  },
  ---@type string
  switchbuf = "usetab",
  ---@type boolean | "keep_terminal"
  auto_toggle = false,
  ---@type boolean
  follow_tab = false,
}

return opts
