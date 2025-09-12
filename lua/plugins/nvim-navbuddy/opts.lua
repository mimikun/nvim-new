---@alias BorderConfig 'double'|'none'|'rounded'|'shadow'|'single'|'solid'|'default'|nui_popup_border_options

---@type Navbuddy.config
local opts = {
  ---@type WindowConfig
  window = {
    ---@type BorderConfig
    border = "single",
    ---@type number | string | nui_layout_option_size
    size = "60%",
    position = "50%",
    ---@type number
    scrolloff = nil,
    sections = {
      ---@type WindowSectionConfig
      left = {
        border = nil,
        size = "20%",
        win_options = nil,
      },
      ---@type WindowSectionConfig
      mid = {
        border = nil,
        size = "40%",
        win_options = {
          --number = true,
          --relativenumber = true,
        },
      },
      ---@type WindowSectionConfig
      right = {
        border = nil,
        ---@type "always" | "leaf" | "never"
        preview = "leaf",
        win_options = nil,
      },
    },
  },
  icons = {
    File = "󰈙 ",
    Module = " ",
    Namespace = "󰌗 ",
    Package = " ",
    Class = "󰌗 ",
    Method = "󰆧 ",
    Property = " ",
    Field = " ",
    Constructor = " ",
    Enum = "󰕘",
    Interface = "󰕘",
    Function = "󰊕 ",
    Variable = "󰆧 ",
    Constant = "󰏿 ",
    String = " ",
    Number = "󰎠 ",
    Boolean = "◩ ",
    Array = "󰅪 ",
    Object = "󰅩 ",
    Key = "󰌋 ",
    Null = "󰟢 ",
    EnumMember = " ",
    Struct = "󰌗 ",
    Event = " ",
    Operator = "󰆕 ",
    TypeParameter = "󰊄 ",
    Macro = "󰉨 ",
  },
  ---@type Integrations
  integrations = {
    telescope = true,
    snacks = true,
  },
  ---@type LspConfig
  lsp = {
    auto_attach = true,
  },
  ---@type SourceBufferConfig
  source_buffer = {
    ---@type "smart" | "top" | "mid" | "none"
    reorient = "smart",
    ---@type number
    scrolloff = nil,
  },
  ---@type NodeMarkersConfig
  node_markers = {
    ---@type NodeMarkersIcons
    icons = {
      leaf = "  ",
      leaf_selected = " → ",
      branch = " ",
    },
  },
}

return opts
