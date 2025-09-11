---@type outline.OutlineOpts
local opts = {
  guides = {
    markers = {
      bottom = "└",
      middle = "├",
      vertical = "│",
      horizontal = "─",
    },
  },
  outline_items = {
    show_symbol_lineno = false,
  },
  outline_window = {
    ---@type "right" | "left"
    position = "right",
    width = 25,
    auto_close = false,
    auto_jump = false,
    jump_highlight_duration = 300,
    show_numbers = false,
    show_relative_numbers = false,
    wrap = false,
    ---@type boolean | "focus_in_outline" | "focus_in_code"
    show_cursorline = true,
    hide_cursor = false,
  },
  symbol_folding = {
    markers = { "", "" },
  },
  preview_window = {
    open_hover_on_preview = false,
    ---@type "single" | "double" | "rounded" | "solid" | "shadow"
    border = "single",
    winblend = 0,
  },
  providers = {
    priority = {
      "lsp",
      "coc",
      "markdown",
      "norg",
      "man",
    },
    lsp = {
      blacklist_clients = {},
    },
    markdown = {
      filetypes = {
        "markdown",
      },
    },
  },
  symbols = {
    icons = {
      File = { icon = "󰈔" },
      Module = { icon = "󰆧" },
      Namespace = { icon = "󰅪" },
      Package = { icon = "󰏗" },
      Class = { icon = "𝓒" },
      Method = { icon = "ƒ" },
      Property = { icon = "" },
      Field = { icon = "󰆨" },
      Constructor = { icon = "" },
      Enum = { icon = "ℰ" },
      Interface = { icon = "󰜰" },
      Function = { icon = "" },
      Variable = { icon = "" },
      Constant = { icon = "" },
      String = { icon = "𝓐" },
      Number = { icon = "#" },
      Boolean = { icon = "⊨" },
      Array = { icon = "󰅪" },
      Object = { icon = "⦿" },
      Key = { icon = "🔐" },
      Null = { icon = "NULL" },
      EnumMember = { icon = "" },
      Struct = { icon = "𝓢" },
      Event = { icon = "🗲" },
      Operator = { icon = "+" },
      TypeParameter = { icon = "𝙏" },
      Component = { icon = "󰅴" },
      Fragment = { icon = "󰅴" },
      TypeAlias = { icon = " " },
      Parameter = { icon = " " },
      StaticMethod = { icon = " " },
      Macro = { icon = " " },
    },
  },
}

return opts
