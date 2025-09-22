---@type meow.yarn.Config
local opts = {
  ---@type { width: number, height: number, border: string, preview_height_ratio: number }
  window = {
    width = 0.8,
    height = 0.85,
    border = "rounded",
    preview_height_ratio = 0.35,
  },
  ---@type { loading: string, placeholder: string, animation_frames: string[] }
  icons = {
    loading = "",
    placeholder = "",
    animation_frames = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
  },
  ---@type { jump: string, toggle: string, expand: string, expand_alt: string, collapse: string, collapse_alt: string, quit: string }
  mappings = {
    jump = "<CR>",
    toggle = "<Tab>",
    expand = "l",
    expand_alt = "<Right>",
    collapse = "h",
    collapse_alt = "<Left>",
    show_super_hierarchy = "K",
    show_sub_hierarchy = "J",
    quit = "q",
  },
  ---@type number
  expand_depth = 3,
  ---@type number
  preview_context_lines = 10,
  ---@type number
  animation_speed = 100,
  ---@type { type_hierarchy: { icons: { class: string, struct: string, interface: string, default: string } }, call_hierarchy: { icons: { method: string, func: string, variable: string, default: string } } }
  hierarchies = {
    type_hierarchy = {
      icons = {
        class = "󰌗",
        struct = "󰙅",
        interface = "󰌆",
        default = "",
      },
    },
    call_hierarchy = {
      icons = {
        method = "󰆧",
        func = "󰊕",
        variable = "",
        default = "",
      },
    },
  },
}

return opts
