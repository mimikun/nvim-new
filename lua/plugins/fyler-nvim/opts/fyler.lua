---@type FylerConfig
local opts = {
  close_on_select = true,
  confirm_simple = false,
  default_explorer = false,

  ---@type FylerConfigGitStatus
  git_status = {
    enabled = true,
    symbols = {
      Untracked = "?",
      Added = "+",
      Modified = "*",
      Deleted = "x",
      Renamed = ">",
      Copied = "~",
      Conflict = "!",
      Ignored = "#",
    },
  },

  ---@type FylerConfigHooks
  hooks = {
    on_delete = nil,
    on_rename = nil,
    on_highlight = nil,
  },

  icon = {
    directory_collapsed = nil,
    directory_empty = nil,
    directory_expanded = nil,
  },

  ---@type FylerConfigIconProvider
  icon_provider = "nvim_web_devicons",

  ---@type FylerConfigIndentScope
  indentscope = {
    enabled = true,
    marker = "│",
  },

  ---@type table<string, FylerConfigPopup>
  popups = {
    permission = {
      border = "single",
    },
  },

  ---@type FylerConfigWin
  win = {
    border = "single",
  },
}

return opts
