---@type table
local opts = {
  extensions = {
    project = {
      base_dirs = {
        --| `base_dirs`           | Array of project base directory configurations | table (default: nil)                                                                                     |
        "~/dev/src",
        { "~/dev/src2" },
        { "~/dev/src3", max_depth = 4 },
        { path = "~/dev/src4" },
        { path = "~/dev/src5", max_depth = 2 },
      },
      --| `ignore_missing_dirs` | Don't show an error if base dirs are missing   | bool (default: false)                                                                                    |
      ignore_missing_dirs = false,
      --| `hidden_files`        | Show hidden files in selected project          | bool (default: false)                                                                                    |
      hidden_files = false,
      theme = "dropdown",
      --| `order_by`            | Order projects by `asc`, `desc`, `recent`      | string (default: recent)                                                                                 |
      order_by = "asc",
      --| `search_by`           | Telescope finder search by field (title/path)  | string or table (default: title). Can also be a table {"title", "path"} to search by both title and path |
      search_by = "title",
      --| `sync_with_nvim_tree` | Sync projects with nvim tree plugin            | bool (default: false)                                                                                    |
      sync_with_nvim_tree = false,
      --| `on_project_selected` | Custom handler when project is selected        | function(prompt_bufnr) (default: find project files)                                                     |
      --| `cd_scope`            | Array of cd scopes: `tab`, `window`, `global`  | table (default: {"tab", "window"})                                                                       |
    },
  },
}

return opts
