---@type helpview.config
local opts = {
  preview = {
    filetypes = { "help" },
    ignore_previews = {},
    ignore_buftypes = {},
    icon_provider = "internal",
  },
  vimdoc = {
    arguments = {
      default = {
        padding_left = " ",
        padding_right = " ",
      },
    },
    headings = {
      heading_1 = { sign = " ⣾⣿⠛⣿⣷ " },
      heading_2 = { sign = " ⣠⠞⠛⠳⣄ " },
      heading_3 = { sign = " ⣯⣤⠛⣤⣽ " },
      heading_4 = { sign = " ⠓⣠⣿⣄⠚ " },
    },
    horizontal_rules = {
      parts = {
        {
          type = "repeating",
          text = "─",
        },
        {
          type = "text",
          text = " ◈ ",
        },
        {
          type = "repeating",
          direction = "right",
          text = "─",
        },
      },
    },
    inline_codes = {
      padding_left = " ",
      padding_right = " ",
    },
    keycodes = {
      default = {
        padding_left = " ",
        padding_right = " ",
      },
    },
    modelines = {
      border = "─",
    },
    notes = {
      default = {
        padding_left = " ",
        padding_right = " ",
      },
    },
    optionlinks = {
      default = {
        padding_left = " ",
        padding_right = " ",
      },
    },
    tags = {
      default = {
        padding_left = " ",
        padding_right = " ",
      },
    },
    taglinks = {
      default = {
        padding_left = " ",
        padding_right = " ",
      },
    },
    urls = {
      default = {
        icon = "󰌷 ",
      },
      ["github%.com/[%a%d%-%_%.]+%/?$"] = {
        --- github.com/<user>
        icon = " ",
      },
      ["github%.com/[%a%d%-%_%.]+/[%a%d%-%_%.]+%/?$"] = {
        --- github.com/<user>/<repo>
        icon = "󰳐 ",
      },
      ["github%.com/[%a%d%-%_%.]+/[%a%d%-%_%.]+/tree/[%a%d%-%_%.]+%/?$"] = {
        --- github.com/<user>/<repo>/tree/<branch>
        icon = " ",
      },
      ["github%.com/[%a%d%-%_%.]+/[%a%d%-%_%.]+/commits/[%a%d%-%_%.]+%/?$"] = {
        --- github.com/<user>/<repo>/commits/<branch>
        icon = " ",
      },
      ["github%.com/[%a%d%-%_%.]+/[%a%d%-%_%.]+%/releases$"] = {
        --- github.com/<user>/<repo>/releases
        icon = " ",
      },
      ["github%.com/[%a%d%-%_%.]+/[%a%d%-%_%.]+%/tags$"] = {
        --- github.com/<user>/<repo>/tags
        icon = " ",
      },
      ["github%.com/[%a%d%-%_%.]+/[%a%d%-%_%.]+%/issues$"] = {
        --- github.com/<user>/<repo>/issues
        icon = " ",
      },
      ["github%.com/[%a%d%-%_%.]+/[%a%d%-%_%.]+%/pulls$"] = {
        --- github.com/<user>/<repo>/pulls
        icon = " ",
      },
      ["github%.com/[%a%d%-%_%.]+/[%a%d%-%_%.]+%/wiki$"] = {
        --- github.com/<user>/<repo>/wiki
        icon = " ",
      },
      ["developer%.mozilla%.org"] = {
        priority = -9999,
        icon = "󰖟 ",
      },
      ["w3schools%.com"] = {
        priority = -9999,
        icon = " ",
      },
      ["stackoverflow%.com"] = {
        priority = -9999,
        icon = "󰓌 ",
      },
      ["reddit%.com"] = {
        priority = -9999,
        icon = " ",
      },
      ["github%.com"] = {
        priority = -9999,
        icon = " ",
      },
      ["gitlab%.com"] = {
        priority = -9999,
        icon = " ",
      },
      ["dev%.to"] = {
        priority = -9999,
        icon = "󱁴 ",
      },
      ["codepen%.io"] = {
        priority = -9999,
        icon = " ",
      },
      ["replit%.com"] = {
        priority = -9999,
        icon = " ",
      },
      ["jsfiddle%.net"] = {
        priority = -9999,
        icon = " ",
      },
      ["npmjs%.com"] = {
        priority = -9999,
        icon = " ",
      },
      ["pypi%.org"] = {
        priority = -9999,
        icon = "󰆦 ",
      },
      ["mvnrepository%.com"] = {
        priority = -9999,
        icon = " ",
      },
      ["medium%.com"] = {
        priority = -9999,
        icon = " ",
      },
      ["linkedin%.com"] = {
        priority = -9999,
        icon = "󰌻 ",
      },
      ["news%.ycombinator%.com"] = {
        priority = -9999,
        icon = " ",
      },
      ["neovim%.io/doc/user/.*#%_?.*$"] = {
        icon = " ",
      },
      ["neovim%.io/doc/user/.*$"] = {
        icon = " ",
      },
      ["github%.com/vim/vim"] = {
        priority = -100,
        icon = " ",
      },
      ["github%.com/neovim/neovim"] = {
        priority = -100,
        icon = " ",
      },
      ["vim%.org"] = {
        icon = " ",
      },
      ["luals%.github%.io/wiki/?.*$"] = {
        icon = " ",
      },
    },
  },
}

return opts
