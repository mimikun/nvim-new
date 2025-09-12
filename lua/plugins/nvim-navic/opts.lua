---@type Options
local opts = {
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
    String = "󰀬 ",
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
  highlight = false,
  separator = " > ",
  depth_limit = 0,
  depth_limit_indicator = "..",
  safe_output = true,
  lazy_update_context = false,
  click = false,
  ---@type LspOptions | nil
  lsp = {
    ---@type boolean
    auto_attach = false,
    ---@type table | nil
    preference = nil,
  },
}

return opts
