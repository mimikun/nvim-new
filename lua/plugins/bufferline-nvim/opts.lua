---@type table
local style_preset = {
  default = require("bufferline").style_preset.default,
  minimal = require("bufferline").style_preset.minimal,
  no_italic = require("bufferline").style_preset.no_italic,
  no_bold = require("bufferline").style_preset.no_bold,
}

---@alias bufferline.Mode 'tabs' | 'buffers'
---@alias bufferline.DiagnosticIndicator fun(count: number, level: string, errors: table<string, any>, ctx: table<string, any>): string
---@alias bufferline.IconFetcherOpts {directory: boolean, path: string, extension: string, filetype: string?}
---@alias bufferline.HoverOptions {reveal: string[], delay: integer, enabled: boolean}

---@type bufferline.Config
local opts = {
  ---@type bufferline.Options
  options = {
    ---@type bufferline.Mode
    mode = "buffers",
    themable = true,
    ---@type bufferline.StylePreset | bufferline.StylePreset[]
    style_preset = style_preset.default,
    ---@type 'none' | 'ordinal' | 'buffer_id' | 'both' | fun(opts: { ordinal: number, id: number, lower: number_helper, raise: number_helper }): string
    numbers = "none",
    close_command = "bdelete! %d",
    right_mouse_command = "vertical sbuffer %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = "bdelete! %d",
    ---@type bufferline.Indicator
    indicator = {
      ---@type string
      --icon = constants.indicator,
      ---@type "underline" | "icon" | "none"
      style = "icon",
    },
    buffer_close_icon = "",
    modified_icon = "●",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    name_formatter = nil,
    max_name_length = 18,
    max_prefix_length = 15,
    truncate_names = true,
    tab_size = 18,
    ---@type boolean | 'nvim_lsp' | 'coc'
    diagnostics = "nvim_lsp",
    diagnostics_update_on_event = true,
    ---@type bufferline.DiagnosticIndicator
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "(" .. count .. ")"
    end,
    offsets = {},
    color_icons = true,
    ---@type fun(opts: bufferline.IconFetcherOpts): string?, string?
    get_element_icon = function(element)
      local icon, hl = require("nvim-web-devicons").get_icon_by_filetype(element.filetype, { default = false })
      return icon, hl
    end,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_duplicate_prefix = true,
    duplicates_across_groups = true,
    persist_buffer_sort = true,
    move_wraps_at_ends = false,
    ---@type "slant" | "slope" | "thick" | "thin" | "padded_slant" | "padded_slope"
    separator_style = "thin",
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    auto_toggle_bufferline = true,
    ---@type bufferline.HoverOptions
    hover = {
      enabled = true,
      delay = 200,
      reveal = { "close" },
    },
    ---@type 'insert_after_current' | 'insert_at_end' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | fun(buffer_a: bufferline.Buffer, buffer_b: bufferline.Buffer): boolean
    sort_by = "id",
    show_tab_indicators = true,
    ---@type bufferline.GroupOpts
    groups = {
      items = {
        require("bufferline.groups").builtin.pinned:with({ icon = "󰐃 " }),
      },
      ---@type bufferline.GroupOptions
      options = {
        toggle_hidden_on_enter = true,
      },
    },
  },
}

return opts
