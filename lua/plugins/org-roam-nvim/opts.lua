---@type org-roam.config.Data
local opts = {
  ---@type string
  directory = "~/orgfiles",
  --directory = "~/org_roam_files",
  ---@type string[]
  org_files = {},
  ---@type org-roam.config.Bindings
  bindings = {
    prefix = "<Leader>n",
    add_alias = "<prefix>aa",
    add_origin = "<prefix>oa",
    capture = "<prefix>c",
    complete_at_point = "<prefix>.",
    find_node = "<prefix>f",
    goto_next_node = "<prefix>n",
    goto_prev_node = "<prefix>p",
    insert_node = "<prefix>i",
    insert_node_immediate = "<prefix>m",
    quickfix_backlinks = "<prefix>q",
    remove_alias = "<prefix>ar",
    remove_origin = "<prefix>or",
    toggle_roam_buffer = "<prefix>l",
    toggle_roam_buffer_fixed = "<prefix>b",
  },
  ---@type org-roam.config.Database
  database = {
    ---@type string
    path = "~/.local/share/nvim/org-roam.nvim/db",
    --path = path.join(BASE_PATH, "db"),
  },
  ---@type org-roam.config.Extensions
  extensions = {
    ---@type org-roam.config.extensions.Dailies
    dailies = {
      ---@type string
      directory = "daily",
      ---@type org-roam.config.extensions.dailies.Bindings
      bindings = {
        capture_date = "<prefix>dD",
        capture_today = "<prefix>dN",
        capture_tomorrow = "<prefix>dT",
        capture_yesterday = "<prefix>dY",
        find_directory = "<prefix>d.",
        goto_date = "<prefix>dd",
        goto_next_date = "<prefix>df",
        goto_prev_date = "<prefix>db",
        goto_today = "<prefix>dn",
        goto_tomorrow = "<prefix>dt",
        goto_yesterday = "<prefix>dy",
      },
      ---@type org-roam.config.extensions.dailies.Templates
      templates = {
        ---@type OrgCaptureTemplateOpts
        d = {
          description = "default",
          template = "%?",
          target = "%<%Y-%m-%d>.org",
        },
      },
    },
  },
  ---@type org-roam.config.Immediate
  immediate = {
    ---@type string
    target = "%<%Y%m%d%H%M%S>-%[slug].org",
    ---@type string
    template = "",
  },

  ---@type org-roam.config.UserInterface
  ui = {
    ---@type org-roam.config.ui.NodeView
    node_buffer = {
      ---@type string|fun():integer
      open = "botright vsplit | vertical resize 50",
      --open = function()
      --  return vim.api.nvim_open_win(0, false, {
      --    relative = "editor",
      --    row = 0,
      --    col = 0,
      --    width = 50,
      --    height = 20,
      --  })
      --end,
      ---@type boolean
      unique = false,
    },
  },
}

return opts
