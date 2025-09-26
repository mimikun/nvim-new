---@type MarkdownToggleConfig
local opts = {
  use_default_keymaps = true,
  filetypes = {
    "markdown",
    "markdown.mdx",
  },
  list_table = {
    "-",
    "+",
    "*",
    "=",
  },
  cycle_list_table = false,
  box_table = {
    "x",
    "~",
    "!",
    ">",
  },
  cycle_box_table = false,
  list_before_box = false,
  heading_table = {
    "#",
    "##",
    "###",
    "####",
    "#####",
  },
  enable_blankhead_skip = true,
  enable_unmarked_only = true,
  enable_autolist = true,
  enable_auto_samestate = false,
  enable_dot_repeat = true,
}

return opts
