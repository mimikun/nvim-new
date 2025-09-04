---@alias OctoMergeMethod "squash" | "rebase" | "commit"
---@alias OctoPickers "telescope" | "fzf-lua" | "snacks"

---@type OctoConfig
local opts = {
  ---@type OctoPickers
  picker = "telescope",
  use_local_fs = false,
  enable_builtin = false,
  default_remote = {
    "upstream",
    "origin",
  },
  ---@type OctoMergeMethod
  default_merge_method = "commit",
  reaction_viewer_hint_icon = " ",
  comment_icon = "▎",
  outdated_icon = "󰅒 ",
  resolved_icon = " ",
  ---@type string "search" | "mentionable" | "assignable"
  users = "search",
  user_icon = " ",
  ghost_icon = "󰊠 ",
  timeline_icons = {
    commit_push = "  ",
    issue_type = "  ",
    commit = "  ",
    label = "  ",
    reference = " ",
    connected = "  ",
    subissue = "  ",
    cross_reference = "  ",
    parent_issue = "  ",
    pinned = "  ",
    milestone = "  ",
    renamed = "  ",
    merged = {
      "  ",
      "OctoPurple",
    },
    closed = {
      closed = {
        "  ",
        "OctoRed",
      },
      completed = {
        "  ",
        "OctoPurple",
      },
      not_planned = {
        "  ",
        "OctoGrey",
      },
      duplicate = {
        "  ",
        "OctoGrey",
      },
    },
    reopened = {
      "  ",
      "OctoGreen",
    },
    assigned = "  ",
    review_requested = "  ",
  },
  default_to_projects_v2 = false,
  ui = {
    use_signcolumn = false,
    use_statuscolumn = true,
    use_foldtext = true,
  },
  runs = {
    icons = {
      pending = "🕖",
      in_progress = "🔄",
      failed = "❌",
      succeeded = "",
      skipped = "⏩",
      cancelled = "✖",
    },
  },
  pull_requests = {
    always_select_remote_on_create = false,
    use_branch_name_as_title = false,
  },
  notifications = {
    current_repo_only = false,
  },
  right_bubble_delimiter = "",
  left_bubble_delimiter = "",
  suppress_missing_scope = {
    projects_v2 = false,
  },
}

return opts

-- Can I use treesitter markdown parser with octo buffers?
--vim.treesitter.language.register('markdown', 'octo')
-- How to enable autocompletion for issues/prs (`#`) and users (`@`)?
-- Add the following mappings for `octo` file type:
--vim.keymap.set("i", "@", "@<C-x><C-o>", { silent = true, buffer = true })
--vim.keymap.set("i", "#", "#<C-x><C-o>", { silent = true, buffer = true })
